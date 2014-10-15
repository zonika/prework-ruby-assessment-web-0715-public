require_relative '../lib/003_methods.rb'
require 'pry'
describe "Methods" do

  school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}
  
  context 'get_grade' do 
    it "returns the grade of a student, given that student's name" do
      expect(get_grade(school, "Sophie")).to eq("C")
    end
  end

  context 'update_subject' do
    it "udpates an instructor's subject given the instructor and the new subject" do 
      update_subject(school, "Jeff", "Ruby on Rails")
      expect(school[:instructors][2][:subject]).to eq("Ruby on Rails")
    end
  end

  context 'add_new_student' do 
    it "adds a new student to the schools student array" do 
      add_new_student(school, "Amanda")
      expect(school[:students][-1][:name]).to eq("Amanda")
    end
  end

  context 'add_new_key' do 
    it 'adds a new key at the top level of the school hash, given a key and a value' do
    add_new_key(school, :ranking, 1)
    binding.pry 
    expect(school[:ranking]).to eq(1)
    end
  end
end