class CreateTools < ActiveRecord::Migration
  def self.up
    create_table :tools do |t|
      t.string :name
      t.string :description
      t.boolean :active
      t.integer :skill
      t.timestamps
    end
  end

  def self.down
    drop_table :tools
  end
end
