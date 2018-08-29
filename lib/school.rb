class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_reader :name, :roster

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end