class AddCommunityAddress < ActiveRecord::Migration
  def up
    add_column :communities, :address, :string, :limit=>255
  end

  def down
  end
end
