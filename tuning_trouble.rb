require "set"

input = File.read('inputs/6')

puts "Problem 6: Tuning Trouble"

part_1 = (0..input.length).reduce([0, input.split("")]){ |(solution, chars), index| solution > 0 ? [solution, []] : [Set[*chars[0...4]].size == 4 ? index : 0, chars[1..]] }[0] + 4

part_2 = (0..input.length).reduce([0, input.split("")]){ |(solution, chars), index| solution > 0 ? [solution, []] : [Set[*chars[0...14]].size == 14 ? index : 0, chars[1..]] }[0] + 14

puts "Part 1: #{part_1}\nPart 2: #{part_2}"

puts
