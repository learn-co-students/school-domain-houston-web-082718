# code here!
require 'pry'
class School

  attr_reader :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster.has_key?(student_grade)
      @roster[student_grade] << student_name
    else
      @roster[student_grade] = []
      @roster[student_grade] << student_name
    end
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each do |grade_key, student_name_array|
      student_name_array.sort!
    end

    @roster
  end

end

school = School.new("Bayside High School")

school.roster
# => {}

school.add_student("Zach Morris", 9)
school.roster
# => {9 => ["Zach Morris"]}

school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.roster
# => {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}

school.grade(9)
# => ["Zach Morris", "AC Slater"]
