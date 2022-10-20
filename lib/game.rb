#initialize game object with 2 player and a board
class Game
  attr_accessor :player_X, :player_O, :board
  
  #Initialize a new game. 
  def initialize
    @player_X = Player.new(gets.chomp, "X")
    @player_O = Player.new(gets.chomp, "O")
    @board = Board.new
  end

  #Play and prompt result in case of victory.
  def play
  @board = Board.new
   while @board.victory? == false 
      @board.play_turn(@player_X)
      if @board.victory?
        puts "Félicitation #{player_X.name}!"
        break
      elsif @board.game_nul?
        puts "Match nul !"
        break
      end
      @board.play_turn(@player_O)
      if @board.victory?
        puts "Félicitations #{player_O.name}!"
        break
      elsif @board.game_nul?
        puts "Match nul !"
        break
      end
    end
  end

  #Ask the users if they want to play again.
  def play_again?
    puts "Voulez-vous refaire une partie?"
    puts "(y/n) tapez 'y' pour yes / tapez 'n' pour no"
    answer = gets.chomp.downcase
    if answer == 'y'
      return true
    elsif answer == 'n'
      return false
    else 
      self.play_again?
    end
  end
end