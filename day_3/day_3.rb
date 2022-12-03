# part 1
alphabet = ('a'..'z').to_a + ('A'..'Z').to_a

bags = File.open('day_3_input.txt').each_line.map { |line| line.chomp.chars }

compartmentalized_bags = bags.map { |bag| bag.each_slice(bag.size / 2).to_a }

common_letters = compartmentalized_bags.map do |compartment|
  compartment[0] & compartment[1]
end

sum = 0

common_letters.flatten.each do |letter|
  sum += alphabet.find_index(letter) + 1
end

# part 2

data = File.read('day_3_input.txt')

groups = data.split.each_slice(3).to_a

p groups

groups.

# badge = groups.each do |group|
#   group[0] & group[1] & group[2]
# end

# p badge
