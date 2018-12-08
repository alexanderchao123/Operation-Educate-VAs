class DeleteTuitionAidColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :schools, :tuition_aid, :integer
  end
end
