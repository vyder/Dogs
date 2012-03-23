class AddPackIDtoDogs < ActiveRecord::Migration
  def change
    remove_column :packs, :dog_id
    add_column :dogs, :pack_id, :integer
  end
end
