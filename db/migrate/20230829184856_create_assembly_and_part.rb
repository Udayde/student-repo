class CreateAssemblyAndPart < ActiveRecord::Migration[7.0]
  def change
    create_table :assembly_and_parts do |t|
      
      t.references :assemblies, foreign_key: true
      
      t.references :parts, foreign_key: true

      t.timestamps
    end
  end
end
