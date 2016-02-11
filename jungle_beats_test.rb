require 'minitest/autorun'
require_relative 'jungle_beats'

class NodeTest < Minitest::Test

  def test_includes_a_beat
    jb = JungleBeats.new("deep dep dep deep")
    assert jb.includes?("deep")
  end

  def test_does_not_include_a_beat
    jb = JungleBeats.new("deep dep dep deep")
    refute jb.includes?("derp")
  end

  def test_adds_beats
    jb = JungleBeats.new("deep dep dep deep")
    assert_equal 4, jb.count
  end

  def test_returns_all_beats
    jb = JungleBeats.new("deep dep dep bloop")
    assert_equal "deep dep dep bloop", jb.all
  end

  def test_beat_is_in_the_list_after_appending_the_beat
    jb = JungleBeats.new("deep dep dep deep")
    jb.append("tin")
    assert jb.includes?("tin")
    assert_equal "deep dep dep deep tin", jb.all
  end


end
