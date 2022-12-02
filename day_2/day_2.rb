def guide
  data = File.read('day_2_input.txt')
  games = data.split("\n").map do |game|
    game.split(" ")
  end
  games
end

def game_on
  sum = 0
  guide.each do |game|
    if game[1] == "X"
      case game[0]
      when "A"
        sum += 4
      when "B"
        sum += 1
      when "C"
        sum += 7
      end
    elsif game[1] == "Y"
      case game[0]
      when "A"
        sum += 8
      when "B"
        sum += 5
      when "C"
        sum += 2
      end
    elsif game[1] == "Z"
      case game[0]
      when "A"
        sum += 3
      when "B"
        sum += 9
      when "C"
        sum += 6
      end
    end
  end
  sum
end



def game_on_again
  sum = 0
  guide.each do |game|
    if game[1] == "X"
      case game[0]
      when "A"
        sum += 3
      when "B"
        sum += 1
      when "C"
        sum += 2
      end
    elsif game[1] == "Y"
      case game[0]
      when "A"
        sum += 4
      when "B"
        sum += 5
      when "C"
        sum += 6
      end
    elsif game[1] == "Z"
      case game[0]
      when "A"
        sum += 8
      when "B"
        sum += 9
      when "C"
        sum += 7
      end
    end
  end
  sum
end

puts game_on_again
