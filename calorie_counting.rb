input = File.read('inputs/1')

puts "Problem 1: Calorie Counting"
part_1 = input.split("\n\n").map{ |elf| elf.split("\n").map{ |c| Integer(c) }.sum }.max

part_2 = input.split("\n\n").map{ |elf| elf.split("\n").map{ |c| Integer(c) }.sum }.sort.reverse[0..2].sum

puts "Part 1: #{part_1}\nPart 2: #{part_2}"

puts
