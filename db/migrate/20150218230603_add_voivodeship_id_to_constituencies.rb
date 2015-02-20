class AddVoivodeshipIdToConstituencies < ActiveRecord::Migration
  def change
    add_reference :constituencies, :voivodeship, index: true
    add_foreign_key :constituencies, :voivodeships
  end
end
