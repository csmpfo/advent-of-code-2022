$input = File.read("input.txt").split("\n").map! { |n| n = n.split("")}.map! { |p| p.map!(&:to_i)}
$input_ar = Array.new($input.length) { Array.new($input[0].length, 0) }

def check(x, y)
  row = $input[x]
  col = $input.transpose[y]
  point = $input[x][y]
  left_side = row[0...y]
  right_side = row[y + 1..row.length]
  top_side = col[0...x]
  bottom_side = col[x + 1..col.length]

  if left_side == [] || right_side == [] || top_side == [] || bottom_side == []
    return false
  end

  if left_side.max >= point && right_side.max >= point && top_side.max >= point && bottom_side.max >= point
    return true
  end

  return false
end

n_hidden = 0

$input.each_with_index do |r, x|
  r.each_with_index do |int, y|
    if check(x, y) == true
      n_hidden += 1
    end
  end
end

puts ""
p $input.flatten.length - n_hidden