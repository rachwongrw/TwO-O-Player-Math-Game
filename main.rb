require_relative 'players'
require_relative 'game'
require_relative 'question'

players = [
  Player.new("Player 1"),
  Player.new("Player 2")
]

game = Game.new(players)

game.start_game