class Level003  

    def play_turn(warrior)
      if warrior.health < 20 && warrior.feel.empty?
        warrior.rest!
      elsif warrior.feel.empty? 
        warrior.walk!
      else
        warrior.attack!  
      end  
    end
    
end
