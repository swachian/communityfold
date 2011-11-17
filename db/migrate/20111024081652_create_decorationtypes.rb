class CreateDecorationtypes < ActiveRecord::Migration
  def change
    create_table :decorationtypes do |t|
      t.string :decorationtypename
      t.string :awardedrank
      t.string :decorationlink, :limit => 1024
      t.string :description
      t.string :name

      t.timestamps
    end
    add_index :decorationtypes, :awardedrank
  end
end
