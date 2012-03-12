class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :display_name
      t.text :description
      t.string :directory
      t.integer :link_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
