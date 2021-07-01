class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :start_date, :end_date, :job_title, :company_name, :details

  belongs_to :student
end
