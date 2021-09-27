class AddStudentAndTeacherToRatings < ActiveRecord::Migration[6.1]
  def change
    add_reference(:ratings, :student, foreign_key: true, null: false)
    add_reference(:ratings, :teacher, foreign_key: true, null: false)

  end
end
