require "spec_helper.rb"
describe Node  do
  it '.data' do
    node = Node.new('plop')
    expect(node.data).to eq('plop')
  end

  it ".next_node" do
    node = Node.new('plop')
    expect(node.next_node).to eq(nil)
  end

  it ".last?" do
    node = Node.new('plop')
    expect(node.last?).to eq(true)
    node.next_node = Node.new('cappa')
    expect(node.last?).to eq(false)
  end

end
