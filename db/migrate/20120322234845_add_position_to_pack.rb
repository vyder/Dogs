class AddPositionToPack < ActiveRecord::Migration
  def change
    add_column :packs, :position, :integer
  end
end
