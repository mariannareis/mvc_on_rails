# encoding: utf-8
require 'optparse'

# Usage: mvc_on_rails [options] path
#    -h, --help                       Show this message
options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: mvc_on_rails [options] path"

  opts.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
  end

  opts.parse!
end