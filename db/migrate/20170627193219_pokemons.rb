class Pokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :trainer_id
    end
  end
end
