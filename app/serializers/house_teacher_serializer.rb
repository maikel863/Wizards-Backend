class HouseTeacherSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :teachers
end