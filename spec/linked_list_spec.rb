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
  end

  it'count' do
    expect(@list.count).to eq(0)
    @list.append('pop')
    expect(@list.count).to eq(1)
  end

  it 'to_string' do
    @list.append('pop')
    expect(@list.to_string).to eq('pop')
  end



end
