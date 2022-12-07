require "set"

input = File.read('inputs/3')

puts "Problem 3: Rucksack Reorganization"

part_1 = input.split("\n").map{ |line| [Set.new(line[0..(line.length/2 - 1)].split("")), Set.new(line[line.length/2..line.length].split(""))] }.map{ |(fh, sh)| (fh & sh).to_a[0].codepoints[0] }.map{ |cp| cp >= 96 ? cp - 96 : cp - 38 }.sum

part_2 = input.split("\n").reduce([[]]){ |acc, line| acc[0].length < 3 ? [acc[0] + [line]] + acc[1..] : [[line]] + [acc[0]] + acc[1..] }.map{ |(a, b, c)| (Set.new(a.split("")) & Set.new(b.split("")) & Set.new(c.split(""))).to_a[0].codepoints[0] }.map{ |cp| cp >= 96 ? cp - 96 : cp - 38 }.sum

puts "Part 1: #{part_1}\nPart 2: #{part_2}"

puts
