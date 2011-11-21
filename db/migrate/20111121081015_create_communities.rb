class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities, :force => true do |t|
      t.integer :id2
      t.integer :id
      t.string :communityname
      t.float :x
      t.float :y
      t.string :town
      t.string :district
      t.string :address      

      t.timestamps
    end
    #add_index :communities, :id
    add_index :communities, [:district, :town]
    add_index :communities, :town
    add_index :communities, [:x, :y]
    add_index :communities, [:y]
    add_index :communities, :communityname
    add_index :communities, :address
  end
end
