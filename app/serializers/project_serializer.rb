class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :name, :description, :url, :screenshot
  belongs_to :student
end
