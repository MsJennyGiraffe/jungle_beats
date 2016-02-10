require 'pry'
require_relative 'jungle_beets'

class Node
  def initialize(beat, position = 0)
    @beat = beat
    @next_node = nil
    @position = position
  end


  def append(beat, position)
    if @next_node == nil
      @next_node = Node.new(beat, position)
    else
      @next_node.append(beat, position + 1)
    end
  end

  def count
    if @next_node == nil
      @position + 1
    else
      @next_node.count
    end
  end

  def includes?(beat)
    if @beat == beat
      true
    elsif @next_node != nil
      @next_node.includes?(beat)
    else
      false
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
