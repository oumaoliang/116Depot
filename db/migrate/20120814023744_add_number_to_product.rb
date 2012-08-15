class AddNumberToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :number, :integer,  :default => 1
  end

  def self.down
    remove_column :products, :number
  end
end
