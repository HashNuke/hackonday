class CreateHackathons < ActiveRecord::Migration
  def self.up
    create_table :hackathons do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :hackathons
  end
end
