class AddStatusToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :status, :integer
  end
end
