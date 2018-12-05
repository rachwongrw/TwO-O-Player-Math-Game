# This class is to create players, What is umportant in this class is their name in which we'll need to
# reference, along with assiging them 3 lives and 0 points at the start of the game. 


class Player
  attr_reader :name
  attr_accessor :change_players, :game_over, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_a_life
    @lives -= 1
  end

  def alive?
    @lives > 0 
  end

end

# Only the player controls its own state - its lives.