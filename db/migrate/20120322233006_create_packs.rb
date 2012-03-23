class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.string :name

      t.timestamps
    end
  end
end
