require './player.rb'
require './question.rb'

#define class Game
class Game
  def initialize
    #init instance variable (attribute) are global variable
    @current_player = nil
    @player1 
    @player2
  end

  def start_game

    puts "Welcome to the Math Game first player, what is your name?"
    #get CLI user input
    @player1 = Player.new(gets.chomp)

    puts "Welcome to the Math Game second player, what is your name?"
    @player2 = Player.new(gets.chomp)

    puts "#{@player1.name} start first! \n"
    #set current player 
    @current_player = @player1

    #start game as long players have lives
    start_round while (@player1.lives > 0 && @player2.lives > 0)

    game_over
  end


  def change_current_player
    #manage current splayer
    return @current_player = @player2  if (@current_player == @player1)
    return @current_player = @player1
  end

  def start_round
    puts "----New Round----"
    #instantiate local question variable
    question = Question.new
    puts "#{@current_player.name}: What does #{question.value1} + #{question.value2} equal?"

    #get user input and convert to integer
    player_answer = gets.chomp.to_i 
    
    #play live logic
    if(player_answer == question.answer)
      puts "#{@current_player.name} Correct Answer! \n"
    else
      puts "#{@current_player.name} Wrong Answer! \n"
      @current_player.lives += -1
    end

    puts "#{@player1.name}: #{@player1.lives}/3 v.s. #{@player2.name}: #{@player2.lives}/3"

    #invoke change player method
    change_current_player
  end

  #end g
  def game_over
    puts "---GAME IS OVER---"
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "Thanks for playing!"
  end
end