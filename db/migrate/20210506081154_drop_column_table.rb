class DropColumnTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :creator_id
  end
end
