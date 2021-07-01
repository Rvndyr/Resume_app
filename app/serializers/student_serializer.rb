class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number,
             :bio, :linkedin, :twitter_handle, :website, :resume_url, :github, :photo

  has_many :experiences
  has_many :educations
  has_many :skills
  has_many :projects
end
