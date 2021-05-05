class RemoveConclusionIdFromThemes < ActiveRecord::Migration[5.2]
  def change
    remove_column :themes, :conclusion_id, :integer
  end
end
