class AddTextToOpinions < ActiveRecord::Migration[5.2]
  def change
    add_column :opinions, :foragainst, :string
    add_column :opinions, :reason, :text
  end
end
