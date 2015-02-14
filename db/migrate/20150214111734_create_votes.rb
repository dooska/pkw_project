class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :committe_id
      t.integer :constituency_id
      t.integer :yes_vote

      t.timestamps null: false
    end
  end
end
