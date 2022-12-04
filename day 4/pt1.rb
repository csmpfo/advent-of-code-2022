input = File.read("input.txt").split("\n")

num_overlaps = 0

input.each_with_index do |item, j|
  one, two, three, four = item.split(",")[0].split("-")[0].to_i, item.split(",")[0].split("-")[1].to_i, item.split(",")[1].split("-")[0].to_i, item.split(",")[1].split("-")[1].to_i
  
  if one <= three && two >= four || three <= one && four >= two
    num_overlaps += 1
  end

end

puts num_overlaps