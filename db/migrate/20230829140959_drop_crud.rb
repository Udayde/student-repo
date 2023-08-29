class DropCrud < ActiveRecord::Migration[7.0]
  def change
    drop_table :cruds
  end
end
