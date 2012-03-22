class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.integer :dog_id
      t.string :name

      t.timestamps
    end
  end
end
