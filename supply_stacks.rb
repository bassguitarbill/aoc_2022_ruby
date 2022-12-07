input = File.read('inputs/5')

puts "Problem 5: Supply Stacks"

part_1 = [input.split("\n\n").each_with_index.map{|input, i| i == 1 ? input.split("\n").map{|cmd| [Integer(cmd.split(" ")[1]), Integer(cmd.split(" ")[3]), Integer(cmd.split(" ")[5])]} : input.split("\n")[0..-2].map(&:chars).transpose.select{|arr| !"[ ]".include? arr[-1]}.map{|arr| arr.join("").strip.chars}}].map{|(stacks, commands)| commands.reduce(stacks){|s, (amt, from, to)| (0..(amt - 1)).reduce(s){|st, _| from > to ? (to - 2 < 0 ? [] : st[0..(to - 2)]) + [[st[from - 1][0]] + st[to - 1]] + st[(to)..(from - 2)] + [st[from - 1][1..]] + st[(from)..] : (from - 2 < 0 ? [] : st[0..(from - 2)]) + [st[from - 1][1..]] + st[(from)..(to - 2)] + [[st[from - 1][0]] + st[to - 1]] + st[(to)..] }}}[0].map{|stack| stack[0]}.join("")

part_2 = [input.split("\n\n").each_with_index.map{|input, i| i == 1 ? input.split("\n").map{|cmd| [Integer(cmd.split(" ")[1]), Integer(cmd.split(" ")[3]), Integer(cmd.split(" ")[5])]} : input.split("\n")[0..-2].map(&:chars).transpose.select{|arr| !"[ ]".include? arr[-1]}.map{|arr| arr.join("").strip.chars}}].map{|(stacks, commands)| commands.reduce(stacks){|st, (amt, from, to)| from > to ? (to - 2 < 0 ? [] : st[0..(to - 2)]) + [st[from - 1][0..(amt - 1)] + st[to - 1]] + st[(to)..(from - 2)] + [st[from - 1][amt..]] + st[(from)..] : (from - 2 < 0 ? [] : st[0..(from - 2)]) + [st[from - 1][amt..]] + st[(from)..(to - 2)] + [st[from - 1][0..(amt - 1)] + st[to - 1]] + st[(to)..]}}[0].map{|stack| stack[0]}.join("")

puts "Part 1: #{part_1}\nPart 2: #{part_2}"

puts
