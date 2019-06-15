require "spec_helper.rb"
describe JungleBeat  do
  before :each do
    @jb = JungleBeat.new
  end
  it "append" do
    expect(@jb.list.head).to eq(nil)
    @jb.append('ho hum diddly')
    expect(@jb.list.to_string).to eq('ho hum diddly')
    expect(@jb.list.head.data).to eq('ho')
    expect(@jb.list.head.next_node.data).to eq('hum')
    @jb.append('why not make a beat inherit from linked list')
    expect(@jb.list.to_string).to eq('ho hum diddly why not make a beat inherit from linked list')

  end

  it "count" do
    @jb.append('left right left')
    expect(@jb.count).to eq(3)
    @jb.append('hey hey')
    expect(@jb.count).to eq(5)
  end

  it 'play' do
    ##Can I test Play?
  end

end
