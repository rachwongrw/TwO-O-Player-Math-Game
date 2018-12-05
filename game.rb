class Game
  attr_accessor :lose_a_life, :current_lives, :check_answer
  
  def initialize
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")
    ]
    @current_player = @players[rand(0..1)]
    puts "------------ START ------------"
  end 

  def start_game
    while @players[0].lives > 0 && @players[1].lives > 0
      player = @current_player
      q1 = Question.new
      puts "#{@current_player.name}: #{q1.ask_q}" 
      playeranswer = $stdin.gets.chomp.to_i
      check_answer(playeranswer, q1)
    end
  end  

  def change_players
    if @current_player == @players[0]
      @current_player = @players[1]
    elsif @current_player == @players[1]
      @current_player = @players[0]
    end
  end

  def check_answer(playeranswer, q1)
    if q1.answer == playeranswer
      puts "YES! That is correct"
      change_players
      start_game
    else
      puts "NO! That is incorrect"
      @current_player.lose_a_life
      puts "--------- SCORE COUNT ---------"
      puts "Player 1: #{@players[0].lives}/3 vs. Player 2: #{@players[1].lives}/3"
      if @current_player.alive?
        change_players
        puts "----------- NEW TURN ----------"
        start_game
      else
        puts "----!!!!NO MORE LIVES!!!!----"
        game_over
      end
    end
  end

  def game_over
    puts "--------- GAME OVER ---------"
    exit(0)
  end 

end

