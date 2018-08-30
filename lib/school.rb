require 'pry'
class School

  attr_accessor :school_name, :roster


  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.values.each do |arr|
      arr.sort! do |a, b|
        a <=> b
      end
    end
    @roster
  end
end

# j_school = School.new("Jefferson")
# j_school.add_student("jordan", 9)
# j_school.add_student("jonathan", 8)
# j_school.add_student("kevin", 8)
# j_school.add_student("billey", 9)
#
# # binding.pry
