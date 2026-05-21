# read file
file = File.new("file.txt", "r")
    puts file.sysread(20) # Prints the first 20 characters
file.close

# write file
File.open("file.txt", "r+") do |file|
    file.syswrite("This ")
    file.each_byte { |c| puts c; puts '' }
end
