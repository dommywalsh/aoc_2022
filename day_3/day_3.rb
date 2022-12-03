# part 1
alphabet = ('a'..'z').to_a + ('A'..'Z').to_a

bags = File.open('day_3_input.txt').each_line.map { |line| line.chomp.chars }

compartmentalized_bags = bags.map { |bag| bag.each_slice(bag.size / 2).to_a }

# p compartmentalized_bags

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

array_groups = groups.map do |group|
  group.map(&:split)
end

charred_array = array_groups.flatten.map(&:chars)

badges = charred_array.each_slice(3).to_a.map do |array|
  array[0] & array[1] & array[2]
end

second_sum = 0

badges.flatten.each do |badge|
  second_sum += alphabet.find_index(badge) + 1
end

p second_sum
