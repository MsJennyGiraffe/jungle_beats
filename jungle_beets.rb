require_relative 'node'

class JungleBeats
  def initialize(beat)
    @head_node = nil
    @beat = nil
    @position = 0
    split_beats(beat)
  end

  def split_beats(beat)
    beat.split.each do |split_beat|
      append(split_beat)
    end
  end

  def append(beat)
    if @head_node == nil
      @head_node = Node.new(beat)
    else
      position = 1
      @head_node.append(beat, position)
    end
  end

  def count
    if @head_node == nil
      @position = 0
    else
      @head_node.count
    end
  end

  def includes?(beat)
    if @head_node == beat
      true
    else
      @head_node.includes?(beat)
    end
  end

  def all
    if @head_node != nil
      @head_node
    else
      @head_node.all
    end
  end

end
