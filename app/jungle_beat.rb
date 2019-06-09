class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end
  def append(string)
    node_data = string.split
    node_data.each{|data| @list.append(data)}
  end

  def count
    @list.count
  end

end
