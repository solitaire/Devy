class AddMissingColumnForAssets < ActiveRecord::Migration
  def self.up
    add_column :assets, :attachment_file_name, :string
  end

  def self.down
    remove_column :assets, :attachment_file_name
  end
end
