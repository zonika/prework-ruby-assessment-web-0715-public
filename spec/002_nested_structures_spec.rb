describe "Nested Structures" do
  school = {
  :name => 'Happy Funtime School',
  :location => 'NYC',
  :instructors => [
    {:name=>'Blake', :subject=>'being awesome' },
    {:name=>'Steven', :subject=>'being better than blake'},
    {:name=>'Jeff', :subject=>'karaoke'}
  ],
  :students => [
    {:name => 'Marissa', :grade => 'B'},
    {:name=>'Billy', :grade => 'F'},
    {:name => 'Frank', :grade => 'A'},
    {:name => 'Sophie', :grade => 'C'}
  ]
  }

  it 'adds a key to the school hash called "founded_in" and sets it to the value 2013' do
    # write your code here!
    expect(school[:founded_in]).to eq(2013)
  end

  it 'adds a student to the school student array' do 
    # write your code here!
    expect(school[:students].count).to eq(5)
  end

  it 'removes "Billy" from the student array' do 
    # write your code here!
    expect(school[:students][1]).to eq({:name => 'Frank', :grade => 'A'})
  end

  it 'adds a key to every student in the students array called "semester" and assign it the value "Summer"' do
    # write your code here!
    expect(school[:students][0].has_key?(:semester)).to eq(true)
  end

  it "changes Steven's subject to 'being almost better than Blake'" do 
    # write your code here!
    expect(school[:instructors][1][:subject]).to eq("being almost better than Blake")
  end

  it "changes Frank's grade from 'A' to 'F'" do 
    # write your code here!
    expect(school[:students][2][:grade]).to eq('F')
  end

  it "returns the name of the student with a 'B'" do 
    expect('__').to eq("Marissa")
  end

  it "returns the subject of the instructor 'Jeff'" do 
    expect('__').to eq("karaoke")
  end
end