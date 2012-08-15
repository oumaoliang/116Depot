class SearchesController < ApplicationController
	skip_before_filter :authorize
   def  index
       if params[:q]
	      @results = Product.search(params[:q])
	      @cart = current_cart
	   end
	   
	   respond_to do |format|
       format.html # index.html.erb
       format.xml  { render :xml => @results }
    end
   end
end