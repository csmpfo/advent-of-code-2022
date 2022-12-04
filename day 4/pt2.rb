input = File.read("input.txt").split("\n")

num_overlaps = 0

input.each_with_index do |item, j|
  one, two, three, four = item.split(",")[0].split("-")[0].to_i, item.split(",")[0].split("-")[1].to_i, item.split(",")[1].split("-")[0].to_i, item.split(",")[1].split("-")[1].to_i
  #one is low end of first range
  #two is high end of first range
  #three is low end of second range
  #four is high end of second range
  #one       two       one          two
  #    three      four       three       four
  
  if one <= three && three <= two || three <= two && two <= four || three <= one && one <=four || one <= four && four <= two
    num_overlaps += 1
  end
end

puts num_overlaps