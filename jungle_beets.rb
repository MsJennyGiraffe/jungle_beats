require_relative 'node'

class JungleBeats

  attr_accessor :position

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

  def prepend
    #needs to add element to position 0 and
    # position +1 to all other elements
  end

  def insert
    #needs to add element(s) and push back
    #elements >= position argument
    #if element >= position
      #current and next_node.position += 1
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

  def pop
    #return a number of elements?? [parameter](..-1) and
    #delete them from the party train(linked list)
  end

  def find
    #accepts positions as a parameter1, and the number
    #of elements to return as parameter2
    #searches linked list until finds position then accesses
    #them and returns them.

  end

  def all
    return_all = []
    current_node = @head_node
    until current_node == nil
      return_all << current_node.beat
      current_node = current_node.next_node
    end
    return_all.join " "
  end

end
