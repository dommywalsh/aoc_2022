def bags
  data = File.foreach('day_3_input.txt').to_a
  data.map do |bag|
    bag.chomp.split(//)
  end
end

def split_bags(rucksack)
  rucksack.map do |items|
    items.each_slice(items.size / 2).to_a
  end
end

p split_bags(bags)

split_bags(bags).each do | bag|
  bag.select do |letter|

  end
end


def alphabet
  ('a'..'z').to_a.push(('A'..'Z').to_a).join.split(//)
end

# alphabet.each_with_index do |letter, index|
#   puts "#{letter} = #{index + 1}"
# end
