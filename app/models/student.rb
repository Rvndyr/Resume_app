class Student < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  def index
    students = Student.all
    render json: students
  end
end
