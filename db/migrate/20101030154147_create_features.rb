class CreateFeatures < ActiveRecord::Migration
  def self.up
    create_table :features do |t|
      t.string  :name
      t.string  :description
      t.string  :status
      t.integer :project_id
      t.timestamps
    end
  end

  def self.down
    drop_table :features, :force => true
  end
end
