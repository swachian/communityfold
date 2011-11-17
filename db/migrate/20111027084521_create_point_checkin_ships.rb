class CreatePointCheckinShips < ActiveRecord::Migration
  def change
    create_table :point_checkin_ships do |t|
      t.integer :user_id
      t.string :point_id
      t.integer :cat


      t.timestamps
    end
    
    add_index :point_checkin_ships, :user_id
    add_index :point_checkin_ships, :point_id
    add_index :point_checkin_ships, :cat
  end
end
