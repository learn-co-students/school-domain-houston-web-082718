require'pry'

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      #binding.pry
      @roster[grade] << name
      #self.roster[9] = 'mike'
      # that creates {9: ['some name','mike']}
    else
      @roster[grade] = [name]
      #{6:['name','other name'], 9:['mike']}
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end

end

# school = School.new("my school")
# school.add_student("mike", 9)
# A method, grade, should take in an argument of a grade and
# return all of the students in that grade:

# school.grade(9)
# => ["Zach Morris", "AC Slater"]
