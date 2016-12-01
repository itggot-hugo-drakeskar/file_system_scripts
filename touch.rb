#require_relative 'lib/.rb'

def touch()

  exist = File.exists? ARGV[0]
  if exist
    #puts "ERROR, file already exists"
    puts "File exists want to overwrite? Y/N"
    answer = $stdin.gets.chomp.upcase

    if answer == "Y"
    File.open(ARGV[0],'w')
    end

  else
    File.open(ARGV[0],'w+')
    puts 'File created!'
  end
end

touch()