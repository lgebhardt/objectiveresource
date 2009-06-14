class AddNewPeopleFields < ActiveRecord::Migration
  def self.up
    add_column :people, :active, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :people, :active
  end
end
