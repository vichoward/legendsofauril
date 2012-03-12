class CreateEnhancements < ActiveRecord::Migration
  def self.up
    create_table :enhancements do |t|
      t.string :name
      t.string :description
      t.boolean :active
      t.integer :skill
      t.timestamps
    end
  end

  def self.down
    drop_table :enhancements
  end
end
