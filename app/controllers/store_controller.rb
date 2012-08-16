class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    if params[:set_locale]
      redirect_to store_path(:locale => params[:set_locale])
    else
    	 #@products = Product.all
		 @products = Product.paginate :page=>params[:page], :order=>'title desc',
      :per_page => 5
     @cart = current_cart
     
     @products.each do |product|
     @comments = CommentLineItem.where(:comment_id => product.id)
     product.number = @comments.length               
     x = 0
     y = product.number-1
     if @comments.length != 0     
        for i in 0..y
          if (@comments[i].grade == nil)
            @comments[i].grade = 5
          end
          x = x + @comments[i].grade
        end
       product.score = x/@comments.length
     end
    end
   end
  end
end
