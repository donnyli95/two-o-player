class Question
  attr_accessor :question, :min, :max, :range, :player_answer, :answer

  def ask(name)
    @range = [rand(1..20), rand(1..20)]
    @max = range.max
    @min = range.min
    @answer = min + max
    puts "#{name}: What does #{min} plus #{max} equal?"
    @player_answer = gets.chomp.to_i
  end

  def compare
    if player_answer == answer
      true
    else
      false
    end
  end

end

