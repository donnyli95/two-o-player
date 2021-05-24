class Turn
  attr_accessor :current_turn

  def initialize
    @current_turn = 1
  end

  def change_turns
    if current_turn == 1
      self.current_turn = 2
    elsif current_turn == 2
      self.current_turn = 1
    end
  end


end