input = File.read("input.txt").split("\n")

values = Hash["A X" => 3, 
              "A Y" => 4, 
              "A Z" => 8,
              "B X" => 1, 
              "B Y" => 5, 
              "B Z" => 9,
              "C X" => 2, 
              "C Y" => 6, 
              "C Z" => 7,
            ]
#x,a=rock
#y,b=paper
#z,c=scizzors
pts = 0

input.each_with_index do |thing, i|
  pts += values[thing]
end

puts pts
