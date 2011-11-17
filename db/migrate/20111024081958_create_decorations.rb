class CreateDecorations < ActiveRecord::Migration
  def change
    create_table :decorations do |t|
      t.integer :awardedflag
      t.integer :user_id
      t.integer :decorationtype_id
      t.datetime :awardedtime
      t.datetime :awardtime

      t.timestamps
    end
    add_index :decorations, :user_id
    add_index :decorations, :decorationtype_id
    add_index :decorations, :awardedflag
    add_index :decorations, :awardedtime
  end
end
