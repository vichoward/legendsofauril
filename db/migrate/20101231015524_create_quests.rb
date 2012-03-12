class CreateQuests < ActiveRecord::Migration
  def self.up
    create_table :quests do |t|
      t.integer :link_id
      t.string :name
      t.text :explanation
      t.integer :exp_reward
      
      
      t.timestamps
    end
  end

  def self.down
    drop_table :quests
  end
end
