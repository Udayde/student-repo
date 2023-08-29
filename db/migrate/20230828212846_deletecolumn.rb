class Deletecolumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :cruds, :age
  end
end
