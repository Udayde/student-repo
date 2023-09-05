class AddTeacherIdToChildren < ActiveRecord::Migration[7.0]
  def change
    add_reference :children, :teacher, null: false, foreign_key: true
  end
end
