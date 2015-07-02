class School

  def initialize name, location, ranking
    @name = name
    @location = location
    @ranking = ranking
    @students = []
    @instructors = []
    @@schools << self
    @@schools_count += 1
  end

  @@schools = []
  @@schools_count = 0
  
  def self.all 
    @@schools
  end

  def self.count 
    @@schools_count
  end

  def self.reset_all 
    @@schools = []
    @@schools_count = 0
  end

  def name
    @name
  end

  def location
    @location
  end

  def ranking
    @ranking
  end

  def students
    @students
  end
  
  def instructors
    @instructors
  end

  def add_student name, grade, semester
    @students.push( {
      :name => name,
      :grade => grade,
      :semester => semester
    } )
  end

  def remove_student name
    @students.each do |x|
      if x.key(name)
        @students.delete(x)
      end
    end
  end

end