class Board
  attr_accessor :cells
  def initialize
    @cells = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(user_input)
    @cells[user_input.to_i - 1]
  end

  def full?
    @cells.all? {|x| x != " "}
  end

  def turn_count
    @cells.collect {|x| x == " "}.size / 3
  end

  def taken?(position)
    cells[position.to_i - 1] == "X" || cells[position.to_i - 1] == "O"
  end

  def valid_move?(position)
    !(taken?(position))  && (0..9).include?(position.to_i - 1)
  end
  
  #update updates the cells in the board with the player token according to the input
  token = "O"
  
  def update(position, token)
    cells[position.to_i - 1] = token
    display
  end

end

class Player

  #initialize accepts a token to assign
  def initialize(token)
    
  end

  # token cannot be changed once assigned in initialize
  def token
    @token
  end

end


m = Board.new
m.position(5)
m.display
m.valid_move?(9)
m.update(3, "X")
