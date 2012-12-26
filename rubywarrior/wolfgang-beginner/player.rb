require 'level_001'

class Player
  
  def initialize 
    @level = Level001.new
	end
  
  def play_turn(warrior)
    @level.play_turn(warrior)
  end
  
end


