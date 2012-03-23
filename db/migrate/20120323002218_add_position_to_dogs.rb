class AddPositionToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :position, :integer
  end
end
