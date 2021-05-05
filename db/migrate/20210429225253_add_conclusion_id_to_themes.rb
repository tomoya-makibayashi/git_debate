class AddConclusionIdToThemes < ActiveRecord::Migration[5.2]
  def change
    add_column :themes, :conclusion_id, :integer
  end
end
