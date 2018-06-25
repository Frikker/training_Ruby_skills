class WrongNumberOfPlayersError < StandardError
  def message
    puts 'The number of players is not count 2'
  end
end

class WrongNumberOfArguments < StandardError
  def message
    puts 'The number of player\'s arguments is not count 2'
  end
end

class NoSuchStrategyError < StandardError
  def message
    puts 'You have chosen the wrong position'
  end
end

def rps_game_winner(array)
  args_hash = { 'R' => 'S', 'S' => 'P', 'P' => 'R' }
  raise WrongNumberOfPlayersError if array.size != 2
  player1 = array[0]
  player2 = array[1]
  array.each do |elem|
    raise WrongNumberOfArguments if elem.size != 2
    raise NoSuchStrategyError unless args_hash.include?(elem[1].upcase)
  end
  if args_hash[player1[1].upcase] == player2[1].upcase || player1[1] == player2[1]
    return "The winner is #{player1[0]}"
  elsif args_hash[player2[1].upcase] == player1[1].upcase
    return "The winner is #{player2[0]}"
  end
end