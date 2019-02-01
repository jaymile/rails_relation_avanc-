class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.string :name
      t.references :dog, foreign_key: true
      t.references :dog_sitter, foreign_key: true

      t.timestamps
    end
  end
end
