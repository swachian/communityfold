class CreatePointRateShips < ActiveRecord::Migration
  def change
    create_table :point_rate_ships do |t|
      t.integer :user_id
      t.string :point_id
      t.integer :cat
      t.float :score

      t.timestamps
    end
    add_index :point_rate_ships, :user_id
    add_index :point_rate_ships, :point_id
    add_index :point_rate_ships, :cat
    add_index :point_rate_ships, :score
  end
end
