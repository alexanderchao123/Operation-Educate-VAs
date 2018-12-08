class AddEmailToQuestionaire < ActiveRecord::Migration[5.2]
  def change
     add_column :questionaires, :email, :string
  end
end
