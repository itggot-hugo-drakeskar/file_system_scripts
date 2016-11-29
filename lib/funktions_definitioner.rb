#require_relative 'lib/.rb'

def ls()


  if (ARGV.empty?)
    puts Dir.glob("*")
  elsif Dir.exist?(ARGV[0]) == false
    puts "Not an existing directory"
  elsif File.exist?(ARGV[0]) == false
    puts "Not an existing directory"

  else
    puts Dir.glob(ARGV[0]+"\\*")
    puts File.glob(ARGV[0]+"//*")

  end
end
puts Dir.pwd
ls()