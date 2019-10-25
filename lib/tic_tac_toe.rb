require 'pry'
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
    index = input.to_i - 1
  end
  def move(index, token = "X")
    @board[index] = token
  end
  def position_taken?(index)
    # @board[index] !== " "
    @board[index] == "X" || @board[index] == "O"
  end
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  def turn
    ask_for_input = puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
    if valid_move?(index)
      token = current_player
      move(index, token) && display_board
    else
      turn
    end
  end
  def turn_count
    @board.count{|token| token == "X" || token == "O"}#- @board.select(" ").count
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
    # if turn_count % 2 == 0
    #    "X"
    # else
    #    "O"
    # end
  end
  def won?
    #iterate through @board and compare existing positions of X
    #to WIN_COMBINATIONS[0..8]
    #do the same for O?
    @board.each_with_index do |token, index|
      @board[index]
      binding.pry
    end
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
