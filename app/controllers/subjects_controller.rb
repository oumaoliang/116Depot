class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.xml
  def index
    @subjects = Subject.all
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subjects }
    end
  end

  # GET /subjects/1
  # GET /subjects/1.xml
  def show
    @subject = Subject.find(params[:id])
    @results = Product.where(:sub => @subject.sub).paginate :page=>params[:page],
     :per_page => 5
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
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subject }
    end
  end

  # GET /subjects/new
  # GET /subjects/new.xml
  def new
    @subject = Subject.new
    @cart = current_cart

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subject }
    end
  end

  # GET /subjects/1/edit
  def edit
    @subject = Subject.find(params[:id])
    @cart = current_cart
  end

  # POST /subjects
  # POST /subjects.xml
  def create
    @subject = Subject.new(params[:subject])
    @cart = current_cart

    respond_to do |format|
      if @subject.save
        format.html { redirect_to(@subject, :notice => 'Subject was successfully created.') }
        format.xml  { render :xml => @subject, :status => :created, :location => @subject }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subjects/1
  # PUT /subjects/1.xml
  def update
    @subject = Subject.find(params[:id])
    @cart = current_cart
    respond_to do |format|
      if @subject.update_attributes(params[:subject])
        format.html { redirect_to(@subject, :notice => 'Subject was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.xml
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    @cart = current_cart
     respond_to do |format|
      format.html { redirect_to(subjects_url) }
      format.xml  { head :ok }
    end
  end
end
