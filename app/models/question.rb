class Question < ActiveRecord::Base
  validates :title, :description, :presence => true
end
