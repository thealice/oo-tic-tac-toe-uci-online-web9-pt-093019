class TicTacToe
  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Bottom row
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def initialize#(board = nil)
    #@board = board || Array.new(9, " ")
    @board = Array.new(9, " ")
  end
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def input_to_index(input)
    @input = input
    @index = input.to_i - 1
  end
  def move(index, token = "X")
    @board[index] = token
  end
  def position_taken?(index = @index)
    @board[index] != " "
  end
  def valid_move?
    if position_taken &&

  end
  def turn

  end
  def turn_count

  end
  def current_player

  end
  def won?

  end
  def full?

  end
  def draw?
  end
  def over?

  end
  def winner?

  end


end
