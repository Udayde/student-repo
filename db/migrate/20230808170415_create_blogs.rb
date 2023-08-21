class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :context
      t.integer:student_id

      t.timestamps
    end
  end
end
