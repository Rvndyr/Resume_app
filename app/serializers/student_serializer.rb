class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password_digest, :phone_number, 
  :bio, :linkedin, :twitter_handle, :website, :resume_url, :github, :photo
end
