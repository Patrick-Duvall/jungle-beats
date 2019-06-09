require "spec_helper"

describe LinkedList do
  before :each do
    @list = LinkedList.new
  end
  it "append" do
    expect(@list.head).to eq(nil)
    @list.append('bop')
    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq('bop')
    expect(@list.head.next_node).to eq(nil)
    @list.append('beep')
    expect(@list.head.next_node.data).to eq('beep')
    expect(@list.head.next_node.next_node).to eq(nil)
  end
  it "prepend" do
    @list.append('cop')
    @list.append('dop')
    @list.prepend('bop')
    expect(@list.count).to eq(3)
    expect(@list.to_string).to eq('bop cop dop')
    @list.prepend('aop')
    expect(@list.to_string).to eq('aop bop cop dop')
  end

  it'count' do
    expect(@list.count).to eq(0)
    @list.append('pop')
    expect(@list.count).to eq(1)
    @list.append('coop')
    expect(@list.count).to eq(2)
  end

  it 'to_string' do
    @list.append('pop')
    expect(@list.to_string).to eq('pop')
    @list.append('pip')
    expect(@list.to_string).to eq('pop pip')
    @list.append('pup')
    expect(@list.to_string).to eq('pop pip pup')
  end

  it 'insert' do
    @list.append('cop')
    @list.append('dop')
    @list.prepend('bop')
    @list.prepend('aop')
    @list.insert('bup', 2)
    expect(@list.to_string).to eq('aop bop bup cop dop')
    @list.insert('cup', 4)
    expect(@list.to_string).to eq('aop bop bup cop cup dop')
    @list.insert('woop', 6)
    expect(@list.to_string).to eq('aop bop bup cop cup dop woop')
    @list.insert('bup', 9)
    expect(@list.to_string).to eq('aop bop bup cop cup dop woop')
    @list.insert('bup', -2)
    expect(@list.to_string).to eq('aop bop bup cop cup dop woop')
  end

  it "insert at 0th" do
    @list.insert('cup', 0)
    expect(@list.to_string).to eq('cup')
    @list.append('dop')
    @list.insert('awg', 0)
    expect(@list.to_string).to eq('awg cup dop')
  end

  it "find" do
      @list.append('cop')
      @list.append('dop')
      @list.prepend('bop')
      @list.prepend('aop')
      @list.append('eop') #'aop bop cop dop eop'
      expect(@list.find(1,1)).to eq('bop')
      expect(@list.find(2,2)).to eq('cop dop')
      expect(@list.find(0,3)).to eq('aop bop cop')
      expect(@list.find(0,3)).to eq('aop bop cop')
      expect(@list.find(-1,3)).to eq('please enter a start index and number to select')
      expect(@list.find(0,6)).to eq('please enter a start index and number to select')

  end
  it ".pop" do
    @list.append('cop')
    @list.append('dop')
    @list.prepend('bop')
    @list.prepend('aop')
    expect(@list.pop).to eq('dop')
    expect(@list.to_string).to eq('aop bop cop')
    expect(@list.pop).to eq('cop')
    expect(@list.to_string).to eq('aop bop')
  end
  it "includes?" do
    @list.append('cop')
    @list.append('dop')
    @list.prepend('bop')
    @list.prepend('aop')
    expect(@list.includes?('dop')).to eq(true)
    expect(@list.includes?('aop')).to eq(true)
    expect(@list.includes?('fop')).to eq(false)
  end


end
