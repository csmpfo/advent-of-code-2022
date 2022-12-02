input = File.read("input.txt").split("\n")

H = Hash["A" => "Z", "B" => "X", "C" => "Y",
         "X" => "C", "Y" => "A", "Z" => "B", 
]
#x,a=rock
#y,b=paper
#z,c=scizzors
pts = 0

input.each_with_index do |thing, i|
  if H[thing[0]] == thing[2]
    #lost :/
  elsif H[thing[2]] == thing[0]
    pts += 6
  else
    pts += 3
  end 

  if thing[2] == "X"
    pts += 1
  elsif thing[2] == "Y"
    pts += 2
  elsif thing[2] == "Z"
    pts += 3
  end
end

puts pts
