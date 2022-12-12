# tree is visible if all the other trees between it and edge of grid are shorter
# Only consider trees in same row or column
# all trees around edge of grib are visible

grid = File.readlines('day_8_input.txt', chomp: true).map { |line| line.split('').map(&:to_i)}

p grid
