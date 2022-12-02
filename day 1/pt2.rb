input = File.read("input.txt").split("\n")
largest_num = 0
current_ar = []
all_sums = []

input.each_with_index do |thing, i|
  if thing != ""
    current_ar << thing.to_i
  elsif thing == ""
    all_sums << current_ar.sum
    current_ar = []
  end
end
sorted = all_sums.sort
puts (sorted[-1] + sorted[-2] + sorted[-3])
