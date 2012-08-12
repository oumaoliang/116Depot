class CommentLineItemsController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show, :new, :create]
  # GET /comment_line_items
  # GET /comment_line_items.xml
  def index
    id = params[:product_id]
    @comment_line_items = CommentLineItem.where(:product_id => id).all
    @ID = id
    #@products = Product.find(params[:product_id])
    #@ID = params[:product_id]
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comment_line_items }
    end
  end

  # GET /comment_line_items/1
  # GET /comment_line_items/1.xml
  def show
    @comment_line_item = CommentLineItem.find(params[:id])
    @show_ID = params[:product_id]
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment_line_item }
    end
  end

  # GET /comment_line_items/new
  # GET /comment_line_items/new.xml
  def new
    @comment_line_item = CommentLineItem.new
    
    @new_id = params[:product_id]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment_line_item }
    end
  end

  # GET /comment_line_items/1/edit
  def edit
    @comment_line_item = CommentLineItem.find(params[:id])
  end

  # POST /comment_line_items
  # POST /comment_line_items.xml
  def create
    @comment_line_item = CommentLineItem.new(params[:comment_line_item])
    productId = @comment_line_item.product_id
    respond_to do |format|
      if @comment_line_item.save
        #format.html { redirect_to(@comment_line_item, :notice => 'Comment line item was successfully created.') }
        format.html { redirect_to(product_path(:id => productId), :method => :get) }
        format.xml  { render :xml => @comment_line_item, :status => :created, :location => @comment_line_item }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment_line_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comment_line_items/1
  # PUT /comment_line_items/1.xml
  def update
    @comment_line_item = CommentLineItem.find(params[:id])

    respond_to do |format|
      if @comment_line_item.update_attributes(params[:comment_line_item])
        format.html { redirect_to(@comment_line_item, :notice => 'Comment line item was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment_line_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_line_items/1
  # DELETE /comment_line_items/1.xml
  def destroy
    @comment_line_item = CommentLineItem.find(params[:id])
    productId = @comment_line_item.product_id
    @comment_line_item.destroy
    respond_to do |format|
      # format.html { redirect_to(comment_line_items_url) }
      format.html { redirect_to(product_path(:id => productId), :method => :get) }
      format.xml  { head :ok }
    end
  end
end
