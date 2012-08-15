class Order < ActiveRecord::Base
  PAYMENT_TYPES = ["Check", "Credit card", "Purchase order" ]
  has_many :line_items, :dependent => :destroy
  belongs_to :user

  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
  validates :email, :format => {
    :with        =>  %r{^[a-zA-Z][a-zA-Z0-9._-]*@([a-zA-Z0-9-_]+.)+(com|gov|net|com.cn|edu.cn)$},
    :message => 'address should be in the right format.'
  }
  
  # ...
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id =nil
      line_items << item
    end
  end
  
end
