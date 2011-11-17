class CreatePointFavShips < ActiveRecord::Migration
  def change
    create_table :point_fav_ships do |t|
      t.integer :user_id
      t.string :point_id
      t.integer :cat

      t.timestamps
    end
    
    add_index :point_fav_ships, :user_id
    add_index :point_fav_ships, :point_id
    add_index :point_fav_ships, :cat
  end
end
