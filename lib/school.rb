require 'pry'
class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}

  end
  
  def add_student(student,grade)
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
      @roster[grade] << student
  end
  
  
  def grade(num)
    @roster[num]
  end
  
  def sort
   @roster.each do |grade,students|
     @roster[grade] = students.sort
   end
  end
end