class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :attack
      t.integer :defense
      
      t.integer :platinum
      t.integer :gold
      t.integer :silver
      t.intger :copper
      
      t.integer :lore
      t.integer :link_id
      t.integer :quest_id
      t.integer :slot_id
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
