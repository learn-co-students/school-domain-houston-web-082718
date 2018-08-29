# code here!
require 'pry'

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
		if roster[grade] == nil
			@roster[grade] = []
			@roster[grade] << name
		else
			@roster[grade] << name
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.sort.to_h
		@roster.each { |grade, students|
			students.sort!
		}
	end

end