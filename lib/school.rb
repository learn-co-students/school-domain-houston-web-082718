require 'pry'

class School

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if self.roster[grade] == nil
      self.roster[grade] = []
      self.roster[grade] << student_name
    else
      self.roster[grade] << student_name
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.values.each do |student_array|
      student_array.sort!
    end
    self.roster
  end

end
