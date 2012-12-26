class Level006  

  def initialize
    @health = 20
    @direction = :forward
  end

  def play_turn(warrior)
    @warrior = warrior
    puts "under_attack" if under_attack?
    puts "can_attack"   if can_attack?    
    puts "hurt"   if hurt?  

    if hit_wall?
      reverse
      warrior.walk!(@direction)
    elsif under_attack? && badly_hurt?
      @direction = :backward
      warrior.walk!(@direction)
    elsif warrior.feel(@direction).captive?
      warrior.rescue!(@direction)
    elsif hurt? && !can_attack? && !under_attack?
      warrior.rest!
    elsif !can_attack?
      warrior.walk!(@direction)
    else
      warrior.attack!(@direction)
    end  
    @health = warrior.health
  end
 
  def hit_wall?
    @warrior.feel(@direction).wall?
  end
  

  def reverse
    if @direction == :forward
      @direction = :backward
    else
      @direction = :forward
    end
  end
  
  def hurt?     
    @warrior.health < 20
  end

  def badly_hurt?
    @warrior.health < 10
  end
         
  def can_attack? 
    !@warrior.feel(@direction).empty?
  end
  
  def under_attack?
    @warrior.health < @health  
  end
           
end
