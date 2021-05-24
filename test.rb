require_relative "turn"

turn1 = Turn.new

puts turn1.current_turn # should be 1 

turn1.change_turns

puts turn1.current_turn # should be 2