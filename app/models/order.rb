class Order < ActiveRecord::Base
  PAYMENT_TYPES = ["Check", "Credit card", "Purchase order" ]
  has_many :line_items, :dependent => :destroy
  
  # ...
  def add_line_items_form_cart(cart)
    cart.line_items.each do |item|
      item.cart_id =nil
      line_items << item
    end
  end
  
end
