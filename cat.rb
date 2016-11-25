#require_relative 'lib/.rb'

def cat()

  exist = File.exists? ARGV[0]
  if (exist == false)
    puts "ERROR, file do not exists"
  else
    lines = File.readlines(ARGV[0].to_s)
    puts lines
  end
end

cat()