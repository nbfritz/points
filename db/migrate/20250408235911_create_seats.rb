class CreateSeats < ActiveRecord::Migration[8.0]
  def change
    create_table :seats do |t|
      t.references :player, foreign_key: true, null: true
      t.references :session, foreign_key: true, null: true
      t.integer :position
      t.timestamps
    end
  end
end
