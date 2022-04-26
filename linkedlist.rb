class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      @head, @tail = value, value
    else
      Node.new.value(value)
      @tail = value
    end
  end

  def prepend(value)
    if @head.nil?
      @head, @tail = value, value
    else
      Node.new.value(value, @head)
      @head = value
    end
  end
end

class Node
  attr_accessor :data, :next_node

  def value(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

list = LinkedList.new
list.append(454)
list.append(33)
p list
list.prepend(5)
list.prepend(25)
p list
