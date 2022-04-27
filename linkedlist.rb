class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head, @tail = new_node, new_node
    else
      @tail = Node.new(value, @tail)
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head, @tail = new_node, new_node
    else
      @head = Node.new(value, @head)
    end
  end
end

class Node
  attr_accessor :data, :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

list = LinkedList.new
list.append(454)
list.append(33)
list.append(90)

list.prepend(5)
list.prepend(25)
p list
