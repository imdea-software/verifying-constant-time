#!/usr/bin/env ruby

require 'optparse'
require 'ostruct'

def command_line_options
  options = OpenStruct.new
  options.unroll = 3

  OptionParser.new do |opts|
    opts.banner = "Usage: #{File.basename $0} [options] FILE"
    opts.separator ""

    opts.on("-h", "--help", "Show this message.") do
      puts opts
      exit
    end

    opts.on("-u", "--unroll N", "Loop unroll bound (default #{options.unroll}).") do |n|
      options.unroll = n
    end

    opts.on("-e", "--entry-points PROCS", "Entry point procedure(s).") do |e|
      options.entry_points = e
    end

    opts.on("-m", "--model FILE", "Output file for BVD model.") do |m|
      options.model = "/mv:#{m}"
    end

    opts.separator ""

  end.parse!
  options.source_files = ARGV
  unless options.source_files.all?{|f| File.exists?(f)}
    puts "Invalid or missing source file(s)."
    exit
  end
  options.bpl_file = File.basename(options.source_files.last, ".*") + ".bpl"
  options.instrumented = File.basename(options.bpl_file, ".*") + "-instrumented.bpl"

  File.open(options.source_files.last, 'r') do |f|
    options.entry_points = f.grep(/_wrapper\b/).map do |line|
      line.match(/\b\S+_wrapper\b/)[0]
    end
  end

  if options.entry_points.empty?
    puts "Unknown entry points."
    exit
  end

  options
end


def frontend(args)
  puts "Using entry points: #{args.entry_points * ", "}"
  system "smack.py --entry-points #{args.entry_points * ", "} --verifier=boogie -bpl '#{args.bpl_file}' -t #{args.source_files * " "}"
  unless File.exists?(args.bpl_file)
    puts "Failed to generate Boogie code."
    exit
  end
end

def instrumentation(args)
  system "bam '#{args.bpl_file}' --shadowing --modifies-correction -o '#{args.instrumented}'"
  unless File.exists?(args.instrumented)
    puts "Failed to instrument Boogie code."
    exit
  end
end

def verification(args)
  puts "Using unroll bound: #{args.unroll}"
  system "boogie #{args.instrumented} /loopUnroll:#{args.unroll} #{args.model}"
end

begin
  options = command_line_options
  frontend(options)
  instrumentation(options)
  verification(options)

rescue SystemExit, Interrupt

ensure

end
