
tail_localez = []

input = File.read('input.txt').split("\n")

lengths = [
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0],
  [0, 0]
]

tail_localez << lengths.last.dup

input.each do |line|
  direction = line[0]
  distance = line[2..10].to_i

  distance.times do
    head = lengths[0]
    case direction
    when 'L'
      head[0] -= 1
    when 'R'
      head[0] += 1
    when 'U'
      head[1] += 1
    when 'D'
      head[1] -= 1
    else
      fail
    end

    lengths.each_cons(2) do |head, tail|
      dx = head[0] - tail[0]
      dy = head[1] - tail[1]

      if dx.abs >= 2 || dy.abs >= 2
        tail[0] += dx == 0 ? 0 : dx / dx.abs
        tail[1] += dy == 0 ? 0 : dy / dy.abs
      end
    end

    tail_localez << lengths.last.dup
  end
end

puts tail_localez.uniq.size