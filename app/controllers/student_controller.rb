class StudentController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find_by(id: params [:id])
    render json: student.as_json
  end

  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password_digest: params[:password_digest]
      phone_number: params[:phone_number]
      bio: params[:bio]
      linkedin: params[:linkedin]
      twitter_handle: params[:twitter_handle]
      website: params[:website]
      resume_url: params[:resume_url]
      github: params[:github]
      photo: params[:photo]
    )
    if student.save
      render json: { message: "Student created successfully" }, status: :created
    else
      render json: { errors: student.errors.full_messages }, status: :bad_request
    end

    def update
      student = Student.find_by(id: params[:id])
      student.first_name = params[:first_name] || student.first_name
      student.last_name = params[:last_name] || student.last_name
      student.email = params[:email] || student.email
      student.password_digest = params[:password_digest] || student.password_digest
      student.phone_number = params[:phone_number] || student.phone_number
      student.bio = params[:bio] || student.bio
      student.linkedin = params[:linkedin] || student.linkedin
      student.twitter_handle = params[:twitter_handle] || student.twitter_handle
      student.website = params[:website] || student.website
      student.resume_url = params[:resume_url] || student.resume_url
      student.github = params[:github] || student.github
      student.photo = params[:photo] || student.photo
      student.save
      render json: student.as_json
      
    end
  
    def destroy
      student = Student.find_by(id: params[:id])
      student.destroy
      render json: {message: "Student successfully destroyed."}
    end
end
