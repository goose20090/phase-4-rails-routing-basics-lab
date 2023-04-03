class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        render json: students_ordered_by_grades
    end

    def highest_grade
        render json: students_ordered_by_grades.first
    end
end

private
def students_ordered_by_grades
    Student.all.order(grade: :desc)
end
