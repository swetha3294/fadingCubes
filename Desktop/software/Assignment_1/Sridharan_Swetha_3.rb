class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

Rules={ "R" => { "R" => "T", "P" => "P", "S" => "R"},
        "P" => { "R" => "P", "P" => "T", "S" => "S"},
        "S" => { "R" => "R", "P" => "S", "S" => "T"} }

def rps_game_winner(game)
 raise WrongNumberOfPlayersError unless game.length == 2
 raise NoSuchStrategyError unless "PRS".include? game[0][1]
 raise NoSuchStrategyError unless "PRS".include? game[1][1]
  
a=game[0][1]
b=game[1][1]
c=game[0][0]
d=game[1][0]
if a==b
  puts [ a , c ]
end
e=Rules[a][b]
 if e == a
 puts [ c , e ]
else
 puts [ d , e ]  
end
end

rps_game_winner([ [ "Kristen", "P" ], [ "Pam", "S" ] ])
