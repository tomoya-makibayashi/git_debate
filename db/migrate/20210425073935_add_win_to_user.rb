class AddWinToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :win, :integer, null: false, default: 0
  end
end
