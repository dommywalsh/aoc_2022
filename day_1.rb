data = File.foreach("day_1_input.txt", "\n\n").to_a
# take all the data and split into an array in groups that are separated by spaces

summed_groups = data.map do |group|
  group.split("\n").map(&:to_i).sum
end

puts summed_groups.max
