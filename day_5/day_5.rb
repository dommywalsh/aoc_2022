sample = {}
sample[1] = %w(Z N)
sample[2] = %w(M C D)
sample[3] = %w(P)

stacks = {}
stacks[1] = %w(D B J V)
stacks[2] = %w(P V B W R D F)
stacks[3] = %w(R G F L D C W Q)
stacks[4] = %w(W J P M L N D B)
stacks[5] = %w(H N B P C S Q)
stacks[6] = %w(R D B S N G)
stacks[7] = %w(Z B P M Q F S H)
stacks[8] = %w(W L F)
stacks[9] = %w(S V F M R)

def rearrange
  File.readlines('day_5_input.txt', chomp: true).map do |line|
    numbers = line.split(" ")
    numbers.delete_at(0)
    numbers.delete_at(1)
    numbers.delete_at(2)
    numbers.map(&:to_i)
  end
end

# rearrange.each do |instruction|
#   # for each instruction: pop(index 0) from (index 1) and push into (index 2)
#   instruction[0].times do
#     move = stacks[instruction[1]].pop
#     stacks[instruction[2]].push(move)
#   end
# end

# result = ""

# stacks.each do |stack|
#   letter = stack[1].last
#   result += letter
# end

# p result

# PART 2

rearrange.each do |instruction|
  move = stacks[instruction[1]].pop(instruction[0])
  stacks[instruction[2]].push(move).flatten!
end


result = ""

stacks.each do |stack|
  letter = stack[1].last
  result += letter
end

p result
