class CreateSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :sessions do |t|
      t.string :name
      t.references :game, foreign_key: true, null: true
      t.timestamps
    end
  end
end
