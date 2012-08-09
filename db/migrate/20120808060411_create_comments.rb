class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :userName
      t.text :cmContent
      t.integer :productId

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
