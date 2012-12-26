require 'level_004'
LEVEL =  Level004

class Player
  
  def initialize 
    @level = LEVEL.new
	end
  
  def play_turn(warrior)
    @level.play_turn(warrior)
  end
  
end


