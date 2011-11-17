class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :communityname
      t.float :x
      t.float :y
      t.string :town
      t.string :district

      t.timestamps
    end
    add_index :communities, [:district, :town]
    add_index :communities, :town
    add_index :communities, [:x, :y]
    add_index :communities, [:y]
    add_index :communities, :communityname
  end
end
