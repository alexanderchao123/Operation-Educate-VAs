class AddColToQuestionaire < ActiveRecord::Migration[5.2]
  def change
      add_column :questionaires, :city, :string
  end
end
