#!/bin/bash
# hmac.sh v1.1 November 15, 2014
# Copyright (c) 2014 Kenji Yoshino https://www.tidgubi.com
# This script is released under the Version 3 of the GNU General Public
# License https://www.gnu.org/licenses/gpl-3.0.txt
#
# This script implements a BASH and OpenSSL HMAC algorithm according to
# http://csrc.nist.gov/publications/fips/fips198-1/FIPS-198-1_final.pdf
# This script is designed to work with 0.9.8 versions of OpenSSL that do no
# support the '-mac' and '-macopts' parameters.

function usage {
   printf 'hmac.sh sha1|sha256|sha512 key [-f file]\n'
   exit 1
}

# hex2shell $hex [-r]
# Converts $hex to shellcode. If $hex is not byte aligned, left-pad the data
# unless -r is passed, in which case right pad the data
function hex2shell {
   hex=$1
   rtn=''
   if [[ $(( ${#hex} % 2 )) -eq 1 ]]; then
      if [[ "$2" = '-r' ]]; then
         hex="${hex}0"
      else
         hex="0$hex"
      fi
   fi
   ndx=0
   while [ $ndx -lt ${#hex} ]; do
      rtn="$rtn\x${hex:$ndx:2}"
      (( ndx += 2 ))
   done
   echo $rtn
}

# xorHex $str1 $str2 [-r]
# xors $str1 with $str2. Returns hex unless -r is passed. If -r is passed, raw
# binary is returned.
function xorHex {
   if [[ ${#1} -lt ${#2} ]]; then
      len=${#1}
   else
      len=${#2}
   fi
   
   local rtn=''
   
   ndx=0
   while [ $ndx -lt $len ]; do
      if [[ "$3" = '-r' && $(( $ndx % 2 )) -eq 0 ]]; then
         rtn="$rtn\x"
      fi
      first="0x${1:$ndx:1}"
      second="0x${2:$ndx:1}"
      
      rtn="$rtn$( printf '%x' $((first ^ second)) )"
      (( ndx++ ))
   done
   
   printf "$rtn"
}

# hmac sha1|sha256|sha512 key [-f file]
# key is a key in hex. If a file is specified with -f this will hmac the file.
function hmac {
   block_size=0 # in number of nibbles (hex string length)
   case $1 in
      sha1)
         block_size=128 #512 bits
      ;;
      sha256)
         block_size=128 #512 bits
      ;;
      sha512)
         block_size=256 #1024 bits
      ;;
      *)
         usage
      ;;
   esac

   local key=${2#0x}
   if [[ ${#key} -gt $block_size ]]; then
      key=$( printf "$( hex2shell $key )" | openssl dgst -$1 )
      key=${key##* }
   fi
   
   #pad the key with zeros and truncate to the correct length
   key="${key}0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
   key="${key:0:$block_size}"

   # determine if the hmac will process a file or stdin
   if [[ "$3" = '-f' ]]; then
      if [[ "$4" = '-' ]]; then
         text='-'
      elif [[ -r "$4" ]]; then
         text="$4"
      else
         usage
      fi
   else
      text='-'
   fi
   ipad='3636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636363636'
   opad='5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c5c'

   # perform the actual hmac operation per FIPS 198-1
   mac="$( openssl dgst -$1 <(xorHex $key $ipad -r; cat $text) )"
   mac="${mac##* }"
   mac="$( printf $(hex2shell $mac) | cat <( xorHex $key $opad -r ) - | openssl dgst -$1 -binary )"
   printf "${mac##* }"
}

hmac $@
exit 0
