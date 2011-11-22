class CreateCats < ActiveRecord::Migration
  def change
    create_table :cat do |t|
      t.string :name  
      t.integer :cat_id

      t.timestamps
    end
  end
end
