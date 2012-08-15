class CommentLineItem < ActiveRecord::Base
  belongs_to :comment
  belongs_to :product
  validates :cmContent, :presence => true
end
