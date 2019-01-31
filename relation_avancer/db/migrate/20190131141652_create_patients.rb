class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :appointment, index: true
      t.belongs_to :doctor, index: true
      t.timestamps
    end
  end
end