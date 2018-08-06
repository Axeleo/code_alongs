require 'pry'

class Queens

  attr_accessor :white, :black

  def initialize(positions = {white: [0, 3], black: [7, 3]})
    @white = positions[:white]
    @black = positions[:black]
    raise ArgumentError if @black == @white
  end

  def build_board
    @board = []
    8.times do 
      row = []
      8.times do
        row << "O"
      end
    @board << row 
    end
    @board
  end

  def place_queen_white
    @board[@white[0]][(@white[1])] = "W"
  end

  def place_queen_black
    @board[@black[0]][(@black[1])] = "B"
  end

  def board_to_s
    @board.each do |row|
      new_row = [row.join(" ")]
      new_row << "\n"
      @board[@board.index(row)] = new_row 
    end
    @board.last.pop
    @board.join("")
  end

  def to_s
    build_board
    place_queen_white
    place_queen_black
    board_to_s
  end

  def attack?
    same_row_attack? || same_column_attack? || same_diag_attack? || other_diag_attack? || yet_another_diag_attack?
  end

  def same_row_attack?
    @white[0] == @black[0]
  end

  def same_column_attack?
    @white[1] == @black[1]
  end

  def same_diag_attack?
    @white[0] == @white[1] && @black[0] == @black[1]  
  end

  def other_diag_attack?
    @white[0] + 1 == @black[0] && @white[1] + 1 == @black[1]
  end

  def yet_another_diag_attack?  
    @white[0] + 2 == @black[0] && @white[1] + 2 == @black[1]
  end
end

#  binding.pry