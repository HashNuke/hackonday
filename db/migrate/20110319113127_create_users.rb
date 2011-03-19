class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.text :provider
      t.text :uid
      t.text :name
      t.text :email
      t.text :role, :default=>"hacker"

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
