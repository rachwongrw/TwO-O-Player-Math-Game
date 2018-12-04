class Game
  def initialize(players)
    @players = players
  end 

  def start_game
    current_player = @players.sample
    puts "Starting Game..."
    puts "#{current_player} \n Lives: #{current_player.lives} \n Points: #{current_player.points}"
    puts "Please pick two numbers between 1 and 20"

    print "First Number>"

    first_number = $stdin.gets.chomp

    if first_number >= 1 && first_number <= 20
      puts "Second Number>"

      second_number = $stdin.gets.chomp
      if second_number >= 1 && second_number <= 20
        puts "Great! Let's ask you your first Q."
      end
    end 
    
  end