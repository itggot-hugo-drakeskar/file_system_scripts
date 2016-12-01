#require_relative 'lib/.rb'
#require 'byebug'
def ls()

  #directory = (ARGV[0])
  #directory = directory.gsub("\\", "/")
  if (ARGV.empty?)
    directories = []
    items = Dir.entries(".")
    items.each do |i|
      if Dir.exist?(i)
        directories.push i
      end
    end

    files = items - directories
    puts directories
    puts files

  elsif Dir.exist?(ARGV[0]) == false
    puts "Not an existing directory"
  else
    Dir.chdir(ARGV[0])
    directories = []
    items = Dir.entries(".")
    items.each do |i|
      if Dir.exist?(i)
        directories.push i
      end
    end

      files = items - directories
    puts directories
    puts files

    end
end
ls()