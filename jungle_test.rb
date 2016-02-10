# jb = JungleBeat.new("deep dep dep deep")
# > jb.play
require 'minitest/autorun'
# require 'minitest'
require_relative 'jungle_beats'

class JungleTest < Minitest::Test

  def test_play_all_beats
    jb = JungleBeat.new("deep dep dep deep")
    assert_equal jb.play, 4
  end
    #
    # def test_total_will_be_0_when_i_create_a_new_calculator_and_is_a_calculator
    #   calculator = Calculator.new
    #   assert_equal 0, calculator.total
    # end
    #
    # def test_total_will_increase_when_I_use_the_add_function
    #   calculator = Calculator.new
    #   calculator.add 10
    #   assert_equal 10, calculator.total
    # end
end
