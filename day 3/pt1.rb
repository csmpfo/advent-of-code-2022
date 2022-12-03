input = File.read("input.txt").split("\n")

first_halfs = input.map{ |item| item = item[0, item.length / 2]}
second_halfs = input.map{ |item| item = item[item.length / 2, item.length]}

lut = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

shared_letter = []

first_halfs.each_with_index do |item, i| 
  item.split("").each do |letter|
    puts second_halfs[i]
    if second_halfs[i].include? letter
      shared_letter << lut.index(letter) + 1
      break
    end
  end
end

puts shared_letter.sum