class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.integer :skill_id
      t.integer :int
      t.integer :str
      
      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
