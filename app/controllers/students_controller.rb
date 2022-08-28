class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end
    
    def grades
        students_by_grades = Student.order(:grade).reverse
        render json: students_by_grades
    end

    def highest_grade
        student = Student.order(:grade).reverse.first
        render json: student
    end

end
