class AddGradeToCommentLineItem < ActiveRecord::Migration
  def self.up
    add_column :comment_line_items, :grade, :integer, :default => 3
  end

  def self.down
    remove_column :comment_line_items, :grade
  end
end
