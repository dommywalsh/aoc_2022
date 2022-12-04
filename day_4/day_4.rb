data = File.read('day_4_input.txt').lines.map do |line|
  line.strip.split(',')
end

pairs = data.map do |pair|
  pair.map do |element|
    range_array = element.split('-').map(&:to_i)
    range_array[0]..range_array[1]
  end
end

count = 0

pairs.each do |pair|
  pair[0].cover?(pair[1]) || pair[1].cover?(pair[0]) ? count += 1 : count
end

# p count

# PART 2

second_count = 0

pairs.each do |pair|
  unless pair[0].first > pair[1].last || pair[0].last < pair[1].first
    second_count += 1
  end
end

p second_count
