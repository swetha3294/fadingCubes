class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
	[m1[1], m2[1]].each { |s| raise NoSuchStrategyError unless ["S","P","R"].include?(s)}
	return m1 unless m1[1] != m2[1]
	case m1[1]
	when "R"
		return m1 unless m2[1] == "P"
	when "P"
		return m1 unless m2[1] == "S"
	when "S"
		return m1 unless m2[1] == "R"		
	end
	m2
end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
 	rps_result game[0], game[1]
end

def is_player?(arr)
	arr[0].is_a?(String) && arr[1].is_a?(String)
end

def rps_tournament_winner(tournament)
  return tournament unless !is_player?(tournament)
  player1 = rps_tournament_winner(tournament[0])
  player2 = rps_tournament_winner(tournament[1])
  rps_game_winner [player1, player2]
end
rps_result([ [ "Kristen", "P" ], [ "Pam", "S" ] ])