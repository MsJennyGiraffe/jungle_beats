#create a node class
#linked list class
#nodes should store one piece of data
  #3 states: head, data, next node
#iteration (loops) or recursion(call themselves)
#start small, work iteratively.



class JungleBeat
  def initialize(beats)

    beats.split(" ").each_with_index do |beat, index|

      if index == 0
        @beat = Node.new({data: beat})
      else
      end
    end
  end

  def play
    # 'say beats'
    number_of_beats
  end

  def number_of_beats
    @beats.length
  end
end

class Node
  def initialize(data)
    @data
    @next_node
  end

end
