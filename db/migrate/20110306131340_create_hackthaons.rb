class CreateHackthaons < ActiveRecord::Migration
  def self.up
    create_table :hackthaons do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :hackthaons
  end
end
