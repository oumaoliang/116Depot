class CommentLineItem < ActiveRecord::Base
  belongs_to :comment
  belongs_to :product
  validates :cmContent, :presence => true
  #validates :grade, :numericality => {:greater_than_or_equal_to => 0,:smaller_than_or_equal_to => 5}
end
