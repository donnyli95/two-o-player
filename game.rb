require_relative "player"
require_relative "question"

class Game 
  attr_accessor :status

  def initialize
    @status = "Start"
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")


    @question1 = Question.new
  end

  def end
    self.status = "End"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  end

  def start
    current_player = @player1
    other_player = @player2

    while self.status != "End" do
      question = Question.new
      puts "#{current_player.name}: #{question.question}"
      answer = gets.chomp.to_i
      
      if question.check_answer(answer)
        puts "#{current_player.name}: Yes! You are correct."
      else
        puts "#{current_player.name}: Seriously! No!"
        current_player.lives -= 1
      end
      
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      
      puts "----- NEW TURN -----"
      current_player, other_player = other_player, current_player

      if current_player.lives == 0
        puts "... some time later ..." 
        puts "#{other_player.name} wins with a score of #{other_player.name}"
        self.end
      end
    end
  end
end