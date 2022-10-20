#initialize board object

class Board 
  attr_accessor :array

  #initialize a blank board
  def initialize
    @array = []
    for i in 0..8
      @array[i] = BoardCase.new
    end
  end

  #methods to play the game with all prompt infos.
  def play_turn(player)
    self.show
    puts "#{player.name}, c'est à ton tour!"
    choice = (gets.chomp.to_i) - 1
    if (choice > 9) || (choice.negative?)
      puts "Option invalide!"
    elsif array[choice].value != ' '
      puts "Option invalide"
    else
      array[choice].value = player.value
    end

  end

  def game_nul?
    nul = 0
    array.each do |i|
      if i.value == ' '
        nul += 1
      end
    end
    if nul == 0
      return true
    else
      return false
    end
  end

  #Boolean checking all cases of victory -> it returns true if he finds a winner, else return false.
  def victory?
    # row check
    if (array[0].value == array[1].value) && (array[1].value == array[2].value) && (array[0].value != ' ')
      self.show
      return true
    elsif (array[3].value == array[4].value) && (array[4].value == array[5].value) && (array[3].value != ' ')
      self.show
      return true
    elsif (array[6].value == array[7].value) && (array[7].value == array[8].value) && (array[6].value != ' ')
      self.show
      return true
    # column check
    elsif (array[0].value == array[3].value) && (array[3].value == array[6].value) && (array[0].value != ' ')
      self.show
      return true
    elsif (array[1].value == array[4].value) && (array[4].value == array[7].value) && (array[1].value != ' ')
      self.show
      return true
    elsif (array[2].value == array[5].value) && (array[5].value == array[8].value) && (array[2].value != ' ')
      self.show
      return true
    # diagonal check
    elsif (array[0].value == array[4].value) && (array[4].value == array[8].value) && (array[0].value != ' ')
      self.show
      return true
    elsif (array[2].value == array[4].value) && (array[4].value == array[6].value) && (array[2].value != ' ')
      self.show
      return true
    else
      return false
    end
  end

  def show
		puts "#{array[0].value} | #{array[1].value} | #{array[2].value}"
		puts "-"*9
		puts "#{array[3].value} | #{array[4].value} | #{array[5].value}"
		puts "-"*9
		puts "#{array[6].value} | #{array[7].value} | #{array[8].value}"
	end
end
