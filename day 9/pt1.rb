input = File.read("input.txt").split("\n")

head = [0, 0]
tail = [0, 0]

tail_localez = []

input.each do |line|
  direction = line [0]
  distance = line[2..10].to_i

  distance.times do
    case direction
    when 'L'
      head[0] -= 1
    when 'R'
      head[0] += 1
    when 'U'
      head[1] += 1
    when 'D'
      head[1] -= 1
    end
    

    dx = head[0] - tail[0]
    dy = head[1] - tail[1]

    if dx.abs >= 2 || dy.abs >= 2
      tail[0] += dx == 0 ? 0 : dx / dx.abs
      tail[1] += dy == 0 ? 0 : dy / dy.abs
    end

    tail_localez << tail.dup
  end
end

puts tail_localez.uniq.size



#WARNING!!! FIRST DRAFT BELOW THIS LINE!!!! you have been warned....
#it didnt work because i forgot that numbers can be more than one digit
#and i was confused on how to calculate how far the tail was from the head


=begin
input = File.read("input.txt").split("\n")

head = [0, 0]
tail = [0, 0]
tail_localez = []
tail_localez << tail

input.each do |line|
  direction = line[0]
  distance = line[2].to_i

  distance.times do 
    case direction
    when "U"
      head[1] += 1
    when "D"
      head[1] -= 1
    when "L"
      head[0] -= 1
    when "R"
      head[0] += 1 
    end

    dx = head[0] - tail[0]
    dy = head[1] - tail[1]


    if (dx.abs + dy.abs > 1) && ((dx != 0) && (dy != 0))
      if head[0] > tail[0]
        tail[0] += 1
      elsif tail[0] > head[0]
        tail[0] -= 1
      end

      if head[1] > tail[1]
        tail[1] += 1
      elsif tail[0] > head[1]
        tail[1] -= 1
      end

      tail_localez << tail.dup
    end
  end
  
end

print tail_localez.size
=end