# This class is to create players, What is umportant in this class is their name in which we'll need to
# reference, along with assiging them 3 lives and 0 points at the start of the game. 


class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def get_points
    @points += 1
  end 

  def lose_a_life
    @lives -= 1
  end
  
  def end_the_game
    if lives == 0
      end_game("No more lives!")
    end
  end

  
end