input = File.read("input.txt").split("\n")

elf_groups = input.each_slice(3).to_a

lut = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

shared_letter = []

class String
  def intersection(other)
    self.split('') & other.split('')
  end
end

elf_groups.each_with_index do |sub_array, i|
  fir = (sub_array[0].intersection(sub_array[1])).join("")
  sec = (sub_array[1].intersection(sub_array[2])).join("")
  shared = (fir.intersection(sec)).join("")
  shared_letter << lut.index(shared) + 1

end


puts shared_letter.sum