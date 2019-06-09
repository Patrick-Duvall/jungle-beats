
class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      head = @head
      until head.last?
        head = head.next_node
      end
      head.next_node = Node.new(data)
    end
  end

  def prepend(data)
    old_head = @head
    @head = Node.new(data)
    @head.next_node = old_head
  end

  def pop
    return false if @head.nil?
    current = @head
    until current.last?
      last = current
      current = current.next_node
    end
    retval = current.data
    last.next_node = nil
    retval
  end

  def insert(data, num)
    return if num > count || num < 0
    return prepend(data) if num == 0
    current = @head
    (num - 1).times do
      current = current.next_node
    end
      old_next = current.next_node
      current.next_node = Node.new(data)
      current.next_node.next_node = old_next
  end

  def includes?(data)
    return false if @head.nil?
    current = @head
    until current.last?
      return true if data == current.data
      current = current.next_node
    end
    return true if data == current.data
    false
  end

  def find(start,num)
    return '' if @head.nil?
    return 'please enter a start index and number to select' if start < 0 || num > count - start
    string = ''
    current = @head
    (start ).times do
      current = current.next_node
    end
    string += current.data
    (num -1 ).times do
      current = current.next_node
      string += " #{current.data}"
    end
    string
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
    arr = Array.new
    string = ''
    head = @head
    until head.last?
      string += "#{head.data} "
      head = head.next_node
    end
    string += head.data
  end

end
