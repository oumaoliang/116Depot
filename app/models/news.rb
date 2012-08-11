class News < ActiveRecord::Base
  validates :title, :detail, :presence => true
end
