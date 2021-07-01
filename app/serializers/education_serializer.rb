class EducationSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :start_date, :end_date, :degree, :university, :details

  belongs_to :student
end
