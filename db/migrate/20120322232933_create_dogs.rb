class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.integer :pack_id
      t.string :name
      t.string :breed
      t.string :color

      t.timestamps
    end
  end
end
