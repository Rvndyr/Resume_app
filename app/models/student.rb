class Student < ApplicationRecord
  def index
    students = Student.all
    render json: students
  end
end
