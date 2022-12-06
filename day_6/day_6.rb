# need to iterate through array and find set of four unique letters.
# the index number of the last letter within that uniqe set is the desired number
# 1. take string & convert into array of letters (chars?)
# 2. iterate over array and compare the current index with the next 3
# if the combo is unique, then end and return index + 1, otherwise continue
data = File.read('day_6_input.txt').chomp.chars


def unique(input)
  input.each_with_index do |letter, index|
    start = index
    finish = index + 3
    chunk = input[start..finish]
    return finish + 1 if chunk == chunk.uniq
  end
end

def more_unique(input)
  input.each_with_index do |letter, index|
    start = index
    finish = index + 13
    chunk = input[start..finish]
    return finish + 1 if chunk == chunk.uniq
  end
end

p unique(data)
p more_unique(data)
