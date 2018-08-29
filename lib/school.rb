# code here!
class School 
  
  NEW = []
  
  def initialize(new)
    new = NEW 
    @roster = {}
  end 
  
  def roster
    @roster
  end 
  
  def add_student(name, grade)
    if(roster[grade] == nil)
    @roster[grade] = []
    @roster[grade] << name
    #create new grade and have a new array to hold student names 
    else 
    @roster[grade] << name  
    end 
  end 
  
  def grade(grade)
    @roster[grade].each do|student_names|
      student_names
    end 
  end 
    
  def sort
    @roster.sort.to_h
    @roster.each do |grade,student_names|
      student_names.sort!
    end 
  end 
  
end 
  