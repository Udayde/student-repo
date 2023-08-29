class Addcolumn < ActiveRecord::Migration[7.0]
  def change
    add_column :cruds, :address, :string
    add_column :cruds, :phone, :integer
  
  end
end
