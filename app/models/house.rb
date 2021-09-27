class House < ApplicationRecord
    has_many :teachers, dependent: :destroy
end