class CreateCraftings < ActiveRecord::Migration
  def self.up
    create_table :craftings do |t|
      t.integer :component_id
      t.integer :tool_id
      t.integer :agent_id
      t.integer :enhancement_id
      t.timestamps
    end
  end

  def self.down
    drop_table :craftings
  end
end
