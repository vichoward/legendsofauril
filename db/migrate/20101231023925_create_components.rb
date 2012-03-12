class CreateComponents < ActiveRecord::Migration
  def self.up
    create_table :components do |t|
      t.string :name
      t.string :description
      t.boolean :active
      t.integer :skill
      t.integer :chance
      t.integer :enemy_id
      t.timestamps
    end
  end

  def self.down
    drop_table :components
  end
end
