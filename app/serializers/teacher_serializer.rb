class TeacherSerializer < ActiveModel::Serializer
    attributes :id, :name, :house_id, :likes, :dislikes
end