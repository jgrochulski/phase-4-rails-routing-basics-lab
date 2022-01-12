class StudentsController < ApplicationController
  
  def index
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.order(grade: :desc)
    render json: grades
  end

  def highest_grade
    h = Student.maximum(:grade)
    s = Student.find_by(grade: h)
    render json: s
  end

end
