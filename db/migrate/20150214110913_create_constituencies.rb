class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.integer :voters
      t.integer :used_ballots
      t.integer :invalid_no_chose
      t.integer :invalid_more_choises
      t.integer :invalid_other

      t.timestamps null: false
    end
  end
end
