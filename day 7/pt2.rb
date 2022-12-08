input = File.read("input.txt").split("\n")

all_folders = Hash.new(0)
working_dir = []

input.each do |command|
  if command.include? "$ cd .."
    working_dir.pop
  elsif command.include? "$ cd "
    command.slice! "$ cd "
    working_dir << command
  elsif /\d+ /.match? command
    command = command.sub(/ (?<=\d )(\S+)/, "").to_i
    total_dir_name = ""

    working_dir.each do |elem|
      all_folders[total_dir_name += elem] += command.to_i
    end
  end
end
puts 

results = []
all_folders.each { |item| results << item[1] if item[1] >= all_folders["/"] - 40000000}
puts results.min