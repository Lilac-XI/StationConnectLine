class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.integer :cd
      t.string :name
      t.string :pref
      t.timestamps
    end
  end
end
