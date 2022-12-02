data = File.foreach('day_1_input.txt', "\n\n").to_a

summed_groups = data.map do |group|
  group.split("\n").map(&:to_i).sum
end

puts summed_groups

top_three_total = summed_groups.max(3).sum

puts top_three_total
