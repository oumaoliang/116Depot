class AddSubToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :sub, :string
  end

  def self.down
    remove_column :products, :sub
  end
end
