require 'minitest/autorun'
require_relative 'node'



class NodeTest < Minitest::Test

  def test_adds_beats
    jb = JungleBeats.new("deep dep dep deep")
    assert_equal 4, jb.count
  end

  def test_can_append_to_the_end
    skip
    jb = JungleBeats.new("deep dep dep deep")

  end

  def test_includes_a_beat
    jb = JungleBeats.new("deep dep dep deep")
    assert jb.includes?("deep")
  end

  def test_does_not_include_a_beat
    jb = JungleBeats.new("deep dep dep deep")
    refute jb.includes?("derp")
  end

  def test_returns_all_beats
    jb = JungleBeats.new("deep dep dep deep")
    assert_equal "deep dep dep deep", jb.all
  end



end
