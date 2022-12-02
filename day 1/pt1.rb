input = File.read("input.txt").split("\n")
largest_num = 0
current_ar = []

input.each_with_index do |thing, i|
  if thing != ""
    current_ar << thing.to_i
    if current_ar.sum > largest_num
      largest_num = current_ar.sum
    end
  elsif thing == ""
    current_ar = []
  end
end

puts largest_num
