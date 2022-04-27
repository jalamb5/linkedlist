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

  def size
    counter = 0
    if @head.nil?
      counter
    else
      current = @head
      while current
        counter += 1
        current = current.next_node
      end
      counter
    end
  end

  def at(index)
    counter = 0
    current = @head
    if index > self.size
      "Index does not exist"
    else
      until counter == index
        counter += 1
        current = current.next_node
      end
    current
    end
  end

  def pop
    length = self.size
    @tail = self.at(length - 2)
    @tail.next_node = nil
    self
  end

  def contains?(value)
    current = @head
    contents = []
    while !current.nil?
      contents << current.data
      current = current.next_node
    end
    if contents.include?(value)
      true
    else
      false
    end
  end

  def find(value)
    if self.contains?(value)
      #return index
      counter = 0
      current = @head
      until current.data == value
        counter += 1
        current = current.next_node
      end
      counter
    else
      nil
    end
  end

  def to_s
    string = ''
    current = @head
    while current.next_node
      string << "( #{current.data} ) -> "
      current = current.next_node
    end
    string << "nil"
    string
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
list.append(44)
list.append(99)
list.prepend(5)
list.prepend(25)
list.contains?(99)
p list.to_s