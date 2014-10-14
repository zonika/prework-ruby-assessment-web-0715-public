describe "Hashes" do
  language = {:name => "Ruby", :creator => "Yukihiro Matsumoto"}

  it 'adds a new key for type and give it the value "dynamic"' do
    # write your code here!
    expect(language[:type]).to eq("dynamic") 
  end

  it 'prints out all the key/value pairs in the hash' do
    expect(STDOUT).to receive(:puts).with("name: Ruby")
    expect(STDOUT).to receive(:puts).with("creator: Yukihiro Matsumoto")
    # write your code here!
  end

  it 'returns the value given key name' do
    expect('__').to eq("Ruby") 
  end

  it 'returns the key creator given the value' do 
    expect('__').to eq(:creator)
  end
end
