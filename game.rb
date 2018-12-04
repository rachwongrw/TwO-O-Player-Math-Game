class Game
  def initialize(players)
    @players = players
    @lives_game = 3
    @points_game = 0
  end 

  def start_game
    current_player = @players.sample
    puts "Starting Game..."
    puts "Hello #{current_player.name} \nLives: #{@lives_game} \nPoints: #{@points_game}"
    puts "Please pick two numbers between 1 and 20"

    print "First Number > "

    first_number = $stdin.gets.chomp
    first_number = first_number.to_i
      if (1..20).include?(first_number)
        puts "Second Number > "
        
        second_number = $stdin.gets.chomp
        second_number = second_number.to_i

        if (1..20).include?(second_number)
          puts "Great! Let's ask you your first Q."
        else
          end_game("Really? It needed to be between 1 and 20.")
        end
      else
        end_game("Really? It needed to be between 1 and 20.")
      end
  end  

  def end_game(why) #why is the game ending?
    puts why, "Game Over!"
    exit(0)
  end 
end


# if first_number >= ("1") && first_number <= ("20")
#   number1 = first_number.to_i
#   puts "Second Number > "

#   second_number = $stdin.gets.chomp
#   if second_number >= ("1") && second_number <= ("20")
#     number2 = second_number.to_i
#     puts "Great! Let's ask you your first Q."
#     question_1
#   end
# end
