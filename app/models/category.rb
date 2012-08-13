class Category < ActiveRecord::Base
   has_many :subjects
   belongs_to :product
end
