class Level004  

  def initialize
    @health = 20
  end

  def play_turn(warrior)
    @warrior = warrior
    puts "under_attack" if under_attack?
    puts "can_attack"   if can_attack?    
    puts "hurt"   if hurt?    
    
    if hurt? && !can_attack? && !under_attack?
      warrior.rest!
    elsif !can_attack?
      warrior.walk!
    else
      warrior.attack!  
    end  
    @health = warrior.health
  end
  
  def hurt?     
    @warrior.health < 20
  end
         
  def can_attack? 
    !@warrior.feel.empty?
  end
  
  def under_attack?
    @warrior.health < @health  
  end
           
end
