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

results = []
all_folders.each { |item| results << item[1] if item[1] <= 100000}
puts results.sum

#WARNING!!! FIRST DRAFT CODE!!! PROCEED BELOW AT YOUR OWN RISK!!!!!!

=begin
dirs = []
current_dirs = []

input.each_with_index do |command, i|
  if command.include? "$ cd .."
    current_dirs.pop
  elsif command.include? "$ cd "
    command.slice! "$ cd "
    current_dirs << command
    dirs << [command, 0]
    current_dirs = []
  elsif /\d+ /.match? command
    command = command.sub(/ (?<=\d )(\S+)/, "").to_i
    dirs.each do |thing|
      if !current_dirs.include?(thing)
        thing[1] += command
      end
    end
  end
end

print dirs

dirs_with_over = []

dirs.each do |right_now|
  if right_now[1] <= 100000
    dirs_with_over << right_now[1]
  end
end

puts dirs_with_over.sum
=end