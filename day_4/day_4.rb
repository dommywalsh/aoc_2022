data = File.read('day_4_input.txt').lines.map do |line|
  line.strip.split(',')
end

#  p data

pairs = data.map do |pair|
  pair.map do |element|
    range_array = element.split('-').map(&:to_i)
    range_array[0]..range_array[1]
  end
end

count = 0

pairs.each do |pair|
  pair[0].member?(pair[1]) || pair[1].member?(pair[0]) ? count += 1 : count
end

p count

# part 2
