class Question 
  attr_reader :question

  def initialize
    val1 = rand(1..20)
    val2 = rand(1..20)
    @question = "What does #{val1} plus #{val2} equal?"
    @answer = val1 + val2
  end

  def check_answer(answer)
    @answer == answer
  end

end


# class Question
#   attr_accessor :question, :min, :max, :range, :player_answer, :answer

#   def ask(name)
#     @range = [rand(1..20), rand(1..20)]
#     @max = range.max
#     @min = range.min
#     @answer = min + max
#     puts "#{name}: What does #{min} plus #{max} equal?"
#     @player_answer = gets.chomp.to_i
#   end

#   def compare
#     if player_answer == answer
#       true
#     else
#       false
#     end
#   end

# end

