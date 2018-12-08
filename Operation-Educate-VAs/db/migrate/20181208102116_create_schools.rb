class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :city
      t.string :rep
      t.string :email
      t.integer :veterans
      t.integer :tuition
      t.integer :tuition_aid

      t.timestamps
    end
  end
end
