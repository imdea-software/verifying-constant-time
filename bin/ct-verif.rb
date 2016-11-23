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
    bpl_file: 'a.bpl',
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

    opts.on('-f', '--bpl-file FILE', "Intemediate BPL file.") do |f|
      params[:bpl_file] = f
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

  (puts "Input FILES required; see --help."; exit) if params[:sources].empty?
  params[:sources].each do |f|
    (puts "File #{f} not found."; exit) unless File.exists? f
  end
  (puts "Entry-points PROCS required see --help."; exit) if params[:entries].empty?

  return params
end

begin
  params = get_parameters
  echo = params[:dry] ? "echo" : ""

  inputs = params[:sources]
  temp_files = []

  if params[:compile]
    flags = []
    flags << "--clang-options=\"#{params[:clang_options] * " "}\"" if params[:clang_options].any?
    flags << "--verifier boogie"
    flags << "--entry-points #{params[:entries] * ","}"
    flags << "-bpl #{params[:bpl_file]}"
    puts `#{echo} smack -t #{flags * " "} #{inputs * " "}`
    raise "failed to compile #{inputs * ", "}" unless $?.success?
    inputs = [params[:bpl_file]]
  end

  if params[:product]
    inputs.map! do |program|
      product = program.sub(/.bpl/, ".product.bpl")
      puts `#{echo} bam -i #{program} --shadowing -o #{product}`
      raise "failed to construct product program" unless $?.success?
      product
    end
  end

  if params[:verify]
    flags = []
    flags << "/doModSetAnalysis"
    flags << "/loopUnroll:#{params[:unroll]}" if params[:unroll]
    flags << "/timeLimit:#{params[:time]}" if params[:time]
    inputs.each do |program|
      puts `#{echo} boogie #{flags * " "} #{program}`
      raise "failed to process product program" unless $?.success?
    end
  end

rescue Interrupt
  puts "Got interrupt."

rescue => e
  puts "#{e}"

ensure

end
