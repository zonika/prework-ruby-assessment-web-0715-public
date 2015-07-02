describe "Hashes" do
  language = {:name => "Ruby", :creator => "Yukihiro Matsumoto"}

  it 'adds a new key for type and give it the value "dynamic"' do
    # write your code here!
    language[:type]="dynamic"
    expect(language[:type]).to eq("dynamic")
    
  end

  it 'prints out all the key/value pairs in the hash' do
    expect(STDOUT).to receive(:puts).with("name: Ruby")
    expect(STDOUT).to receive(:puts).with("creator: Yukihiro Matsumoto")
    expect(STDOUT).to receive(:puts).with("type: dynamic")
    # write your code here!
    language.each{|k,v| puts "#{k}: #{v}"}
  end

  it 'returns the value given key name' do
    expect(language[:name]).to eq("Ruby")
  end

  it 'returns the key creator given the value' do
    expect(language.key("Yukihiro Matsumoto")).to eq(:creator)
  end
end
