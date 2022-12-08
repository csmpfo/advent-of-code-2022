$input = File.read("input.txt").split("\n").map! { |n| n = n.split("")}.map! { |p| p.map!(&:to_i)}
$input_ar = Array.new($input.length) { Array.new($input[0].length, 0) }

def check_distance(ar, check_elem)
  if ar == []
    return 0
  end
  ar.each_with_index do |item, i|
    if item >= check_elem
      return i + 1
    end
  end
  return ar.length
end

def check(x, y)
  row = $input[x]
  col = $input.transpose[y]

  point = $input[x][y]

  left_side = row[0...y]
  right_side = row[y + 1..row.length]
  top_side = col[0...x]
  bottom_side = col[x + 1..col.length]

  l = check_distance(left_side.reverse, point)
  r = check_distance(right_side, point)
  t = check_distance(top_side.reverse, point)
  b = check_distance(bottom_side, point)

  return l*r*t*b
end

viewing_happy = []

$input.each_with_index do |r, x|
  r.each_with_index do |int, y|
    viewing_happy << check(x, y)
  end
end

p viewing_happy.max