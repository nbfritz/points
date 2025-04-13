class AddUniqueIndexToPlayersEmail < ActiveRecord::Migration[8.0]
  def change
    add_index :players, :email, unique: true
  end
end
