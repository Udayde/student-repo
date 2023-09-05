class Dropcourses < ActiveRecord::Migration[7.0]
  def change
    drop_table :courses
    drop_table :courses_students
  end
end
