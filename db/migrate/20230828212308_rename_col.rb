class RenameCol < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :first_name, :f_name
  end
end
