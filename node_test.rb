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
    #assert_equal "deep dep dep deep", jb.all
    #jb.append "deep dep deep"
    #assert_equal "deep dep dep deep deep dep deep"

  end

  def test_includes_a_beat
    jb = JungleBeats.new("deep dep dep deep")
    assert jb.includes?("deep")
  end

  def test_does_not_include_a_beat
    jb = JungleBeats.new("deep dep dep deep")
    refute jb.includes?("derp")
  end

  def test_prepend_beat
    skip

  end

  def test_position
    jb = JungleBeats.new("deep dep dep deep")
    assert_equal 1, jb.position("dep")
  end

end
