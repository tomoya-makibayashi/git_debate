class RemoveUserIdFromConclusion < ActiveRecord::Migration[5.2]
  def change
    remove_column :conclusions, :user_id, :integer
  end
end
