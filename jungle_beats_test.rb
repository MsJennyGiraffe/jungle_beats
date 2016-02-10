require 'minitest/autorun'
require_relative 'jungle_beets'

class NodeTest < Minitest::Test

  def test_includes_a_beat
    jb = JungleBeats.new("deep dep dep deep")
    assert jb.includes?("deep")
  end

  def test_includes_a_beat
    skip
    jb = JungleBeats.new("deep dep dep deep")
    refute jb.includes?("derp")
  end

  def test_adds_beats
    skip
    jb = JungleBeats.new("deep dep dep deep")
    assert_equal 4, jb.length
  end

end
