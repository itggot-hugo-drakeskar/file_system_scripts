#require_relative 'lib/.rb'
require 'byebug'
def ls()
  Dir.chdir(ARGV[0])
  directory = (ARGV[0])
  directory = directory.gsub("\\", "/")
  if (ARGV.empty?)
    puts Dir.glob("*")
  elsif Dir.exist?(ARGV[0]) == false
    puts "Not an existing directory"
  else
    puts Dir.glob("*")
  end
end
#byebug
ls()