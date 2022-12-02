puts File.read("input.txt").split("\n\n").map{ |thing| thing.split("\n").map(&:to_i).sum}.max
