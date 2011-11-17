class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.integer :readcount
      t.integer :commentcount
      t.string :body
      t.integer :author_id
      t.integer :authortype
      t.integer :msgtype
      t.integer :publicflag
      t.integer :community_id
      t.integer :notice_id

      t.timestamps
    end
    add_index :notices, :author_id
    add_index :notices, :community_id
    add_index :notices, :notice_id
    add_index :notices, :authortype
    add_index :notices, :msgtype
    add_index :notices, :publicflag
    add_index :notices, :readcount
    add_index :notices, :commentcount
    
  end
end
