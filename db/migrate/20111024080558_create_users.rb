class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :nick
      t.string :password
      t.string :address, :limit => 1024
      t.integer :age
      t.string :gender
      t.integer :community_id
      t.string :imsi
      t.string :imei
      t.string :clienttype
      t.string :devicemodel
      t.string :scrrensize
      t.string :rank
      t.integer :answers_count
      t.string :portraitlink, :limit => 1024
      t.text   :portrait , :limit => 1024*1024*1024

      t.timestamps
    end
    add_index :users, :community_id
    add_index :users, :login
    add_index :users, :imsi
    add_index :users, :answers_count
  end
end
