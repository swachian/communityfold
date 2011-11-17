class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :point_id
      t.integer :cat
      t.float :rate
      t.integer :ratecounts

      t.timestamps
    end
    
    add_index :points, :point_id
    add_index :points, :cat
    add_index :points, :rate
    add_index :points, :ratecounts
  end
end
