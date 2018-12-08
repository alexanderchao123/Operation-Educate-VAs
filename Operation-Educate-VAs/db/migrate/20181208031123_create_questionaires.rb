class CreateQuestionaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionaires do |t|
        t.references :user
        t.string :date_of_birth
        t.string :sex
        t.string :role_in_military
        t.integer :time_in_military
        t.integer :time_in_combat
        t.integer :dependents
        t.string :education_level
        t.string :discharge_date
        t.string :part_online_fulltime
        t.string :cumm_nine_elev

        t.timestamps
    end
  end
end
