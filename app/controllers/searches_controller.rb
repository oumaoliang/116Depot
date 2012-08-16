class SearchesController < ApplicationController
	skip_before_filter :authorize
   def  index
     if params[:q]
	      @results = Product.search(params[:q])
	      @cart = current_cart
	      
	      @results.each do |product|
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
	   
	   respond_to do |format|
       format.html # index.html.erb
       format.xml  { render :xml => @results }
    end
   end
end