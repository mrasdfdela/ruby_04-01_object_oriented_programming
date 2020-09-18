class Student
    attr_reader :name

    def initialize(name, grade)
        @name = name
        @grade = grade
    end
    
    def better_grade_than?(other_student)
        grade > other_student.grade ? true : false
    end

    protected
    def grade
        @grade
    end
end

joe = Student.new("joe", 12)
bob = Student.new("bob", 11)

# inheritance, exercise 7
puts "Well done!" if joe.better_grade_than?(bob)