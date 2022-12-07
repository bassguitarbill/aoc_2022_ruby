input = File.read('inputs/2')

puts "Problem 2: Rock Paper Scissors"

part_1 = input.split("\n").map{|l| l.split(" ").map{|c| c.codepoints[0]}}.map{ |(opp, you)| ((opp - 65) - (you - 88)) % 3 == 0 ? (3 + (you - 87)) : ((opp - 65) - (you - 88)) % 3 == 1 ? (you - 87) : 6 + (you - 87)}.sum

part_2 = input.split("\n").map{|l| l.split(" ").map{|c| c.codepoints[0]}}.map{ |(opp, res)| res - 88 == 0 ? (((opp - 66) % 3) + 1) : res - 88 == 1 ? 4 + (opp - 65) : (((opp - 64) % 3 ) + 7) }.sum
puts "Part 1: #{part_1}\nPart 2: #{part_2}"

puts
