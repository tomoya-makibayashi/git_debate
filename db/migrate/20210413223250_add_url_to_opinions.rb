class AddUrlToOpinions < ActiveRecord::Migration[5.2]
  def change
    add_column :opinions, :url, :text
  end
end
