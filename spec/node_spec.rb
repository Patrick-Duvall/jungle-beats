require "spec_helper.rb"
describe Node  do
  it 'data' do
    node = Node.new('plop')
    expect(node.data).to eq('plop')
  end

  it "next node" do
    node = Node.new('plop')
    expect(node.next_node).to eq(nil)
  end

end
