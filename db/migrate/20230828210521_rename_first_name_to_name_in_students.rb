class RenameFirstNameToNameInStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column: students ,:first_name,:name
  end
end
