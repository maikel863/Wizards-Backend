class AddHouseToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_reference(:teachers, :house, foreign_key true, null: false)
  end
end
