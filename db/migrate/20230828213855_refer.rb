class Refer < ActiveRecord::Migration[7.0]
  def change_ 
    add_reference :posts, :project_id, :projects
  end
end
