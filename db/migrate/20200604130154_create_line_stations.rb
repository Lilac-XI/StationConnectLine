class CreateLineStations < ActiveRecord::Migration[6.0]
  def change
    create_table :line_stations do |t|
      t.references :station, indes: true
      t.references :line, index: true
      t.timestamps
    end
  end
end
