input = File.read("input.txt").split("")

input.each_with_index do |item, i|
  window = input[i, 14]
  if window.uniq.length == window.length
    puts i + 14
    exit
  end
end