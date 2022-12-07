input = File.read('inputs/4')

puts "Problem 4: Camp Cleanup"

part_1 = input.split("\n").map{ |l| l.split(",").map{|m| m.split("-").map{|n| Integer(n)}}}.map{|(f, s)| (f[0] <= s[0] && f[1] >= s[1]) || (s[0] <= f[0] && s[1] >= f[1]) ? 1 : 0}.sum

part_2 = input.split("\n").map{ |l| l.split(",").map{|m| m.split("-").map{|n| Integer(n)}}}.map{|(f, s)| f[0] < s[0] ? [f, s] : [s, f]}.map{|(l, h)| l[1] >= h[0] ? 1 : 0}.sum

puts "Part 1: #{part_1}\nPart 2: #{part_2}"

puts
