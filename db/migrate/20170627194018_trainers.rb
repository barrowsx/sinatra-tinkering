class Trainers < ActiveRecord::Migration[5.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :pokemon_id
    end
  end
end
