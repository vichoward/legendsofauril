class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email, :null => false
      t.string :password
      t.boolean :admin, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
