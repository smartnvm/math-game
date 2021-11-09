class Question
  #short hand for attr_writer and attr_reader
  attr_accessor :value1, :value2, :answer
  def initialize 
    @value1 = rand(1..50)
    @value2 = rand(1..50)
    @answer = @value1 + @value2
  end
end
