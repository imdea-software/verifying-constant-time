#!/usr/bin/env ruby

require 'optparse'

def get_parameters
  params = {
    sources: [],
    entries: [],
    dry: false,
    compile: true,
    product: true,
    verify: true,
    time: nil,
    unroll: nil,
    a: 'a.bpl',
    b: 'b.bpl',
    clang_options: ["-I#{__dir__}/../include"]
  }

  OptionParser.new do |opts|
    opts.banner = "Usage: #{File.basename $0} [options] FILE(s)"

    opts.on("-h", "--help", "Show this message") do |v|
      puts opts
      exit
    end

    opts.on('-n', "--dry-run", "Just pretend.") do |d|
      params[:dry] = d
    end

    opts.on('-e', '--entry-point PROC', "Entry-point procedures.") do |p|
      params[:entries] << p
    end

    opts.on('--clang-options STRING', "Flags to pass to clang.") do |s|
      params[:clang_options] << s unless s.empty?
    end

    opts.on('-t', '--time-limit SECONDS', "Time limit.") do |t|
      params[:time] = t
    end

    opts.on('-u', '--unroll-limit NUMBER', "Unroll limit.") do |u|
      params[:unroll] = u
    end

    opts.on('-l', '--loop-limit NUMBER', "Loop analysis limit.") do |l|
      params[:loop] = l
    end

    opts.on('-a FILE', "Intermediate file after Boogie translation.") do |f|
      params[:a] = f
    end

    opts.on('-b FILE', "Intermediate file after product construction.") do |f|
      params[:b] = f
    end

    opts.separator ""
    opts.separator "phase selection"

    opts.on('--[no-]compile', "Compile the input program?") do |p|
      params[:compile] = p
    end

    opts.on('--[no-]product', "Do the product construction?") do |p|
      params[:product] = p
    end

    opts.on('--[no-]verify', "Do the verification?") do |p|
      params[:verify] = p
    end

  end.parse!
  params[:sources] = ARGV

  raise "Input FILES required; see --help." if params[:sources].empty?
  params[:sources].each do |f|
    raise "File #{f} not found." unless File.exists? f
  end
  if params[:compile]
    raise "Entry-points PROCS required see --help." if params[:entries].empty?
  else
    raise "Too many input FILES given." if params[:sources].count > 1
  end

  params[:a] = params[:sources].first unless params[:compile]
  params[:b] = params[:a] unless params[:product]

  return params
end

begin
  params = get_parameters
  echo = params[:dry] ? "echo" : ""

  inputs = params[:sources]
  temp_files = []

  if params[:compile]
    flags = ["-t"]
    flags << "--clang-options=\"#{params[:clang_options] * " "}\"" if params[:clang_options].any?
    flags << "--loop-limit #{params[:loop]}" if params[:loop]
    flags << "--verifier boogie"
    flags << "--entry-points #{params[:entries] * ","}"
    flags << "-bpl #{params[:a]}"
    puts `#{echo} smack #{flags * " "} #{params[:sources] * " "}`
    raise "failed to compile #{params[:sources] * ", "}" unless $?.success?
  end

  if params[:product]
    puts `#{echo} bam -q -i #{params[:a]} --shadowing -o #{params[:b]}`
    raise "failed to construct product program" unless $?.success?
  end

  if params[:verify]
    flags = []
    flags << "/doModSetAnalysis"
    flags << "/loopUnroll:#{params[:unroll]}" if params[:unroll]
    flags << "/timeLimit:#{params[:time]}" if params[:time]
    warn "warning: only unrolling up to #{params[:unroll]}" if params[:unroll]
    puts `#{echo} boogie #{flags * " "} #{params[:b]}`
    raise "failed to process product program" unless $?.success?
  end

rescue Interrupt
  puts "Got interrupt."

rescue => e
  puts "#{e}"
  exit(-1)

ensure

end
