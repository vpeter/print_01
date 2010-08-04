class PaperCategoriesController < ApplicationController
  # GET /paper_categories
  # GET /paper_categories.xml
  def index
    @paper_categories = PaperCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paper_categories }
    end
  end

  # GET /paper_categories/1
  # GET /paper_categories/1.xml
  def show
    @paper_category = PaperCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @paper_category }
    end
  end

  # GET /paper_categories/new
  # GET /paper_categories/new.xml
  def new
    @paper_category = PaperCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @paper_category }
    end
  end

  # GET /paper_categories/1/edit
  def edit
    @paper_category = PaperCategory.find(params[:id])
  end

  # POST /paper_categories
  # POST /paper_categories.xml
  def create
    @paper_category = PaperCategory.new(params[:paper_category])

    respond_to do |format|
      if @paper_category.save
        flash[:notice] = 'PaperCategory was successfully created.'
        format.html { redirect_to(@paper_category) }
        format.xml  { render :xml => @paper_category, :status => :created, :location => @paper_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @paper_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paper_categories/1
  # PUT /paper_categories/1.xml
  def update
    @paper_category = PaperCategory.find(params[:id])

    respond_to do |format|
      if @paper_category.update_attributes(params[:paper_category])
        flash[:notice] = 'PaperCategory was successfully updated.'
        format.html { redirect_to(@paper_category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @paper_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paper_categories/1
  # DELETE /paper_categories/1.xml
  def destroy
    @paper_category = PaperCategory.find(params[:id])
    @paper_category.destroy

    respond_to do |format|
      format.html { redirect_to(paper_categories_url) }
      format.xml  { head :ok }
    end
  end
end
