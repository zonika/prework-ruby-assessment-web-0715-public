require_relative '../lib/004_object_orientation.rb'

describe "Object Orientation" do

  before(:each) do
    School.reset_all
  end 

  let(:school){ School.new("Flatiron School", "NYC", 5) }

  context 'class methods' do
    it 'keeps track of all instances of school created' do 
      expect(School.all).to include(school)
    end

    it 'can count how many schools have been created' do 
      School.new("Flatiron School", "NYC", 5)
      expect(School.count).to eq(1)
    end

    it 'can reset the schools that have been created' do 
      School.reset_all
      expect(School.count).to eq(0) 
    end
  end

  context 'initializing' do 
    it 'can initialize a school' do 
      expect(school).to be_a(School)
    end

    it 'initializes with a name' do 
      expect(school.name).to eq("Flatiron School")
    end

    it 'initializes with a location' do 
      expect(school.location).to eq("NYC")
    end

    it 'initializes with a ranking' do
      expect(school.ranking).to eq(5)
    end
  end

  context 'attributes' do 
    it 'has a name' do 
      expect(school.name).to eq("Flatiron School")
    end

    it 'has a location' do 
      expect(school.location).to eq("NYC")
    end

    it 'has an array of students' do 
      expect(school.students).to eq([])
    end

    it 'has an array of instructors' do 
      expect(school.instructors).to eq([])
    end

    context 'ranking' do 
      it 'has a ranking' do 
        expect(school.ranking).to eq(5)
      end

      it "can't change its own ranking" do
        expect { school.ranking = 4 }.to raise_error
      end
    end 
  end

  context 'instance methods' do
    let(:student) { {:name => "Amanda", :grade => "A", :semester => "fall"} }

    it 'adds a student, given a name, grade, and semester' do 
      school.add_student(student[:name], student[:grade], student[:semester])
      expect(school.students).to include(student)
    end

    it 'removes a student, given a name' do
      school.remove_student(student[:name])
      expect(school.students).to_not include(student)
    end
  end
end