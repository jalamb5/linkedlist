class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    end
    if @tail.nil?
      @tail = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
  end

  def prepend(value)
    new_node = Node.new(value, @head)
    @head = new_node
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
