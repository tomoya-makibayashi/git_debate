class AddUserIdToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :user_id, :integer
  end
end
