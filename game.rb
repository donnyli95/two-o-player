require_relative "player"
require_relative "question"
require_relative "turn"

class Game 
  attr_accessor :status

  def initialize
    @status = "Start"
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")

    @turn1 = Turn.new

    @question1 = Question.new
  end

  def end
    self.status = "End"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  end

  def start
    while self.status != "End" do
      if @turn1.current_turn == 1
        current_player = @player1
      elsif @turn1.current_turn == 2
        current_player = @player2
      end
      
      @question1.ask(current_player.name)
      
      if @question1.compare
        puts "#{current_player.name}: Yes! You are correct."
      elsif !@question1.compare
        puts "#{current_player.name}: Seriously! No!"
        current_player.lives -= 1
      end
      
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      
      puts "----- NEW TURN -----"
      # @turn1.change_turns
      
      if @player1.lives == 0
        puts "... some time later ..." 
        puts "#{@player2.name} wins with a score of #{@player2.lives}"
        self.end
      elsif @player2.lives == 0
        puts "... some time later ..." 
        puts "#{@player1.name} wins with a score of #{@player1.lives}"
        self.end
      end
    end
  end



end