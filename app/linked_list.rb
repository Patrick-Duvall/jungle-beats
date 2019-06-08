
class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    @head = node
  end

  def count
    return 0 if @head.nil?
    count = 1
    head = @head
    until head.last?
      head = head.next_node
      count +=1
    end
    count
  end

  def to_string
    return '' if @head.nil?
    string = ''
    head = @head
    until head.last?
      string += head.data
      head = head.next_node
    end
    string += head.data
  end

end
