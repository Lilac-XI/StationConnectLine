class CreateLines < ActiveRecord::Migration[6.0]
  def change
    create_table :lines do |t|
      t.integer :cd
      t.string :name
      t.timestamps
    end
  end
end
