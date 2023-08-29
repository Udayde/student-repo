class Update1 < ActiveRecord::Migration[7.0]
  def change
    change_column :cruds, :mobile_no, :string
  end
end
