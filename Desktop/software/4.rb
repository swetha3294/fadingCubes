class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

Rules={ "R" => { "R" => "T", "P" => "P", "S" => "R"},
        "P" => { "R" => "P", "P" => "T", "S" => "S"},
        "S" => { "R" => "R", "P" => "S", "S" => "T"} }

def rps_game_winner(game)

 raise NoSuchStrategyError unless "PRS".include? game[0][1]
 raise NoSuchStrategyError unless "PRS".include? game[1][1]
  
a=game[0][1]
b=game[1][1]
c=game[0][0]
d=game[1][0]
if a==b
  return [ a , c ]
end
e=Rules[a][b]
 if e == a
 return [ c , e ]
else
 return [ d , e ]  
end
end

def rps_tournament_winner(tournament)
if tournament[0][0].is_a? String
return rps_game_winner(tournament)
end
return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end

puts rps_tournament_winner([[[ ["Kristen", "P"], ["Dave", "S"] ],  [ ["Richard", "R"], ["Michael", "S"] ],],[  [ ["Allen", "S"], ["Omer", "P"] ],  [ ["David E.", "R"], ["Richard X.", "P"] ]]])

