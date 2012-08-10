class Comment < ActiveRecord::Base
  has_many :comment_line_items
end
