# code here!
class School

    attr_reader :roster, :name

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student (name, grade)
        if self.has_grade(grade)
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end 
    end

    def has_grade (grade)
        @roster.keys.include?(grade)
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade,value|
            value.sort!
        end
    end
end