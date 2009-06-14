class AddNewDogFields < ActiveRecord::Migration
  def self.up
    add_column :dogs, :birthday, :date
    add_column :dogs, :date_of_death, :date
    add_column :dogs, :weight_in_grams, :integer
    add_column :dogs, :breed, :string
  end

  def self.down
    remove_column :dogs, :birthday
    remove_column :dogs, :date_of_death
    remove_column :dogs, :weight_in_grams
    remove_column :dogs, :breed
  end
end
