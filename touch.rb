#require_relative 'lib/.rb'

def touch()

  exist = File.exists? ARGV[0]
  if exist
    puts "ERROR, file already exists"
  else
    File.open(ARGV[0],'w+')
    puts 'File created!'
  end
end

touch()