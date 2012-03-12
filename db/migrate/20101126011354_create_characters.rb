class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.integer :strength  #attack damage
      t.integer :agility   #ability to avoid attacks/accuracy 1 is 1 defense and 1 attack
      t.integer :health    #hp 5 per purchase
      t.integer :const     #hp 1 per const and damage reduction 1 per point
      t.integer :intelligence #skills that you are able to learn/spells
      t.integer :intuition #bonus experience...TIIIIIIGGHHHTT
      t.integer :charisma #ability to influence people and get better costs in shops
      t.integer :perception # ability to see things on maps, secret bonuses in battles
      t.integer :attack #ability to overcome defense value
      t.integer :defense #avoidance to overcome attack value
      t.integer :speed #running if you need to get out of a fight, slight bonus to defense 1 is 2 defense
      t.integer :crit_chance #value that then gets divided then turned into percentage
      t.float :crit_multiplier #multiplies crit damage X?
      t.integer :magic_power # ability to use spells
      t.integer :potency # strength of skills, matches against magic_defense
      t.integer :magic_defense #matches against potency
      t.integer :regen_rate #every map 
      t.integer :damage_reduction #goes against str for damage
      t.integer :lore #xp bonus for exploration
      t.integer :exp
      t.integer :platinum
      t.integer :gold
      t.integer :silver
      t.integer :copper
      
      
      ###EXP tables
      t.integer :strength_exp  #attack damage
      t.integer :agility_exp   #ability to avoid attacks/accuracy 1 is 1 defense and 1 attack
      t.integer :health_exp    #hp 5 per purchase
      t.integer :const_exp     #hp 1 per const and damage reduction 1 per point
      t.integer :intelligence_exp #skills that you are able to learn/spells
      t.integer :intuition_exp #bonus experience...TIIIIIIGGHHHTT
      t.integer :charisma_exp #ability to influence people and get better costs in shops
      t.integer :perception_exp # ability to see things on maps, secret bonuses in battles
      t.integer :attack_exp #ability to overcome defense value
      t.integer :defense_exp #avoidance to overcome attack value
      t.integer :speed_exp #running if you need to get out of a fight, slight bonus to defense 1 is 2 defense
      t.integer :crit_chance_exp #value that then gets divided then turned into percentage
      t.float :crit_multiplier_exp #multiplies crit damage X?
      t.integer :magic_power_exp # ability to use spells
      t.integer :potency_exp # strength of skills, matches against magic_defense
      t.integer :magic_defense_exp #matches against potency
      t.integer :regen_rate_exp #every map 
      t.integer :damage_reduction_exp #goes against str for damage
      t.integer :lore_exp #xp bonus for exploration
      
      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end


