class AddScoreToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :score, :integer
  end

  def self.down
    remove_column :products, :score
  end
end
