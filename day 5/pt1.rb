input = File.read("input.txt").split("\n")

annoying_array = ["LNWTD".split(""), "CPH".split(""), "WPHNDGMJ".split(""), "CWSNTQL".split(""), "PHCN".split(""), "THNDMWQB".split(""), "MBRJGSL".split(""), "ZNWGVBRT".split(""), "WGDNPL".split("")]



input.each_with_index do |item, i|
  destination = item[-1].to_i
  beginning = item[-6].to_i
  amount = item[4, 3].to_i

  #puts annoying_array[destination - 1]
  amount.to_i.times do |i|
    moving_thing = annoying_array[beginning - 1][-1]
    annoying_array[beginning - 1].pop()
    annoying_array[destination - 1].push(moving_thing)
  end
end

print annoying_array