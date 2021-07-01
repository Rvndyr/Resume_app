class SkillSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :skill

  belongs_to :student
end
