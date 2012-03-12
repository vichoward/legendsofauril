class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.integer :lat
      t.integer :long
      t.integer :radius
      t.string :name
      t.integer :location_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
