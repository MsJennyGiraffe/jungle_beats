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

end
