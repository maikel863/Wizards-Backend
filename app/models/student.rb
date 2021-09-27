class Student < ApplicationRecord
    has_many :ratings
    has_many :teachers, through: :ratings
end