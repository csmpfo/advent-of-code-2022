input = File.read("input.txt").split("")


input.each_with_index do |item, i|
  window = input[i, 4]
  if window.uniq.length == window.length
    puts i + 4
    exit
  end
end