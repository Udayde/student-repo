class Update < ActiveRecord::Migration[7.0]
  def change
    rename_column :cruds, :phone, :mobile_no
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
