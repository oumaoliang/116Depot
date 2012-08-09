class CreateCommentLineItems < ActiveRecord::Migration
  def self.up
    create_table :comment_line_items do |t|
      t.integer :product_id
      t.integer :comment_id
      t.text :cmContent

      t.timestamps
    end
  end

  def self.down
    drop_table :comment_line_items
  end
end
