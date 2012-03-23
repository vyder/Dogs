class AddPositionToPack < ActiveRecord::Migration
  def change
    add_column :packs, :position, :integer
    # remove_column :packs, :position
  end
end
