class SearchesController < ApplicationController
	skip_before_filter :authorize
   def  index
       if params[:q]
	      @results = Product.search(params[:q])
		  #@products = Product.paginate :page=>params[:page], :order=>'title desc', :per_page => 5
		  @cart = current_cart
	   end
	   
	   respond_to do |format|
       format.html # index.html.erb
       format.xml  { render :xml => @results }
    end
   end
 
end