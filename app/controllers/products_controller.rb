class ProductsController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show]
  # GET /products
  # GET /products.xml
  def index
     @products = Product.paginate :page=>params[:page], :order=>'title desc', :per_page => 12
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
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @cart = current_cart
    @comment_line_item = CommentLineItem.new
    @subjects = Subject.all
    @product = Product.find(params[:id])
    product_id = params[:id]
    @comments = CommentLineItem.where(:product_id => product_id).order("created_at desc").paginate :page=>params[:page],
     :per_page => 5
    @comments2 = CommentLineItem.where(:product_id => product_id)
    @product.number = @comments2.length               
    x = 0
    y = @product.number-1
    if @comments2.length != 0     
      for i in 0..y
        if (@comments2[i].grade == nil)
          @comments2[i].grade = 5
        end
        x = x + @comments2[i].grade
      end
      @product.score = x/@product.number
    end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
    @product = Product.new
    @subjects = Subject.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    @subjects = Subject.all 
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])
    @subjects = Subject.all
    respond_to do |format|
      if @product.save
        format.html { redirect_to(@product, :notice => 'Product was successfully created.') }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])
    @subjects = Subject.all
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to(@product, :notice => 'Product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
  
  def who_bought
    @product = Product.find(params[:id])
    @subjects = Subject.all
    respond_to do |format|
      format.atom
      format.xml{ render :xml => @product }
    end
  end
  
end
