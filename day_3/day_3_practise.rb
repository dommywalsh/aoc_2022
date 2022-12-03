bags = File.open('day_3_input.txt').each_line.map { |line| line.chomp.chars }

compartmentalized_bags = bags.map { |bag| bag.each_slice(bag.size / 2).to_a }

p compartmentalized_bags.first


letter_index = ('a'..'z').to_a + ('A'..'Z').to_a
