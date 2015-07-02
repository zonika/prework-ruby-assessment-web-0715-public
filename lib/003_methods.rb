# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope
def get_grade (school, name)
  school[:students].each do |x|
    if x[:name] == name
      return x[:grade]
    end
  end
end

def update_subject (school, name, subject)
  school[:instructors].each do |x|
    if x[:name] == name
      return x[:subject] = subject
    end
  end
end

def add_new_student (school, name, grade="N/A")
  school[:students].push({:name => name, :grade => grade})
end

def add_new_key (school, key, value)
  school[key] = value
end