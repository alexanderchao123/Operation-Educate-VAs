class CreateQuestionaireSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :questionaire_skills do |t|
        t.references :questionaire, foreign_key: true
        t.references :skill, foreign_key: true


        t.timestamps
    end
  end
end
