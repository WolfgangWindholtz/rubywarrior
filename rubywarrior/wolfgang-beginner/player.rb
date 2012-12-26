require 'level_006'
LEVEL =  Level006

class Player
  
  def initialize 
    @level = LEVEL.new
	end
  
  def play_turn(warrior)
    @level.play_turn(warrior)
  end
  
end


