class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
        t.string :name
        
        t.timestamp
    end
  end
end
