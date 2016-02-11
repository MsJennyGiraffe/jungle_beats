require 'pry'
require_relative 'jungle_beets'

class Node
  attr_accessor :next_node
  attr_accessor :beat

  def initialize(beat)
    @beat = beat
    @next_node = nil
  end

  def append(beat)
    if @next_node == nil
      @next_node = Node.new(beat)
    else
      @next_node.append(beat)
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

 def insert
 end

 def pop
 end

 def find
 end

end
