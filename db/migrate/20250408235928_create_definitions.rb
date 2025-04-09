class CreateDefinitions < ActiveRecord::Migration[8.0]
  def change
    create_table :definitions do |t|
      t.string :name
      t.integer :initial_value
      t.integer :small_increment
      t.integer :large_increment
      t.references :game, foreign_key: true, null: true
      t.timestamps
    end
  end
end
