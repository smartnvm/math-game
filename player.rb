class Player
  #Objects method are public, whereas Data is private
  #to access data we need getter and setter, i.e.
  #attr_reader and attr_writer
  #attr_accessor short-hand for attr_reader / attr_writer
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end
end