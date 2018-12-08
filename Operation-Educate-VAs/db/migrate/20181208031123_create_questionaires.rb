class CreateQuestionaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionaires do |t|
        t.string :name
        t.string :date_of_birth
        t.string :sex
        t.string :role_in_military
        t.integer :time_in_military
        t.integer :time_in_combat
        t.integer :dependents
        t.string :education_level

        t.timestamps
    end
  end
end
