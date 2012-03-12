class CreateEnemies < ActiveRecord::Migration
  def self.up
    create_table :enemies do |t|
      t.string :name
      t.integer :strength
      t.integer :agility
      t.integer :health
      t.integer :intelligence
      t.integer :intuition
      t.integer :charisma
      t.integer :perception
      t.integer :attack
      t.integer :defense
      t.integer :potency # strength of skills, matches against magic_defense
      t.integer :magic_defense
      t.integer :level
      t.integer :exp
      t.integer :link_id
      
      ###creatures drop gold and shit
      t.integer :platinum
      t.integer :gold
      t.integer :silver
      t.intger :copper
      t.timestamps
    end
  end

  def self.down
    drop_table :enemies
  end
end
