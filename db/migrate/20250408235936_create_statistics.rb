class CreateStatistics < ActiveRecord::Migration[8.0]
  def change
    create_table :statistics do |t|
      t.references :definition, foreign_key: true, null: false
      t.references :seat, foreign_key: true, null: true
      t.timestamps
    end
  end
end
