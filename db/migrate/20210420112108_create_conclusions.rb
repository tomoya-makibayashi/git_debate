class CreateConclusions < ActiveRecord::Migration[5.2]
  def change
    create_table :conclusions do |t|
      t.text :text
      t.integer :theme_id
      t.integer :user_id
      t.string :foragainst
      t.integer :winner_id
      t.timestamps
    end
  end
end
