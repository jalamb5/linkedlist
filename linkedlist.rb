class LinkedList
  attr_accessor :list
  def initialize
    @list = []
  end

  def append(value)
    list << value
    p list
  end
end

class Node
  def value(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

myList = LinkedList.new
myList.append(4)
myList.append(5)
