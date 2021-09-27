class Teacher < ApplicationRecord
    belongs_to :house
    has_many :ratings
end