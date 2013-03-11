class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :black_card
      t.references :white_cards
      t.references :Playa
      t.integer :wins
      t.integer :losses
      t.integer :draws

      t.timestamps
    end
    add_index :entries, :Playa_id
  end
end
