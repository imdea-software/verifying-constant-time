./hmac.sh sha256 cc2b7e151628aed2a6abf7158809cf4fcc2b7e151628aed2a6abf7158809cf4f < plain > mac
cat plain mac > plain_mac
openssl enc -e -aes-128-cbc -K 2b7e151628aed2a6abf7158809cf4f3c -in plain_mac -iv 000102030405060708090a0b0c0d0e0f -out cipher

