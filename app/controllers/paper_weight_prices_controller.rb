class PaperWeightPricesController < ApplicationController
  # GET /paper_weight_prices
  # GET /paper_weight_prices.xml
  def index
    @paper_weight_prices = PaperWeightPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @paper_weight_prices }
    end
  end

  # GET /paper_weight_prices/1
  # GET /paper_weight_prices/1.xml
  def show
    @paper_weight_price = PaperWeightPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @paper_weight_price }
    end
  end

  # GET /paper_weight_prices/new
  # GET /paper_weight_prices/new.xml
  def new
    @paper_weight_price = PaperWeightPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @paper_weight_price }
    end
  end

  # GET /paper_weight_prices/1/edit
  def edit
    @paper_weight_price = PaperWeightPrice.find(params[:id])
  end

  # POST /paper_weight_prices
  # POST /paper_weight_prices.xml
  def create
    @paper_weight_price = PaperWeightPrice.new(params[:paper_weight_price])

    respond_to do |format|
      if @paper_weight_price.save
        flash[:notice] = 'PaperWeightPrice was successfully created.'
        format.html { redirect_to(@paper_weight_price) }
        format.xml  { render :xml => @paper_weight_price, :status => :created, :location => @paper_weight_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @paper_weight_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /paper_weight_prices/1
  # PUT /paper_weight_prices/1.xml
  def update
    @paper_weight_price = PaperWeightPrice.find(params[:id])

    respond_to do |format|
      if @paper_weight_price.update_attributes(params[:paper_weight_price])
        flash[:notice] = 'PaperWeightPrice was successfully updated.'
        format.html { redirect_to(@paper_weight_price) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @paper_weight_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /paper_weight_prices/1
  # DELETE /paper_weight_prices/1.xml
  def destroy
    @paper_weight_price = PaperWeightPrice.find(params[:id])
    @paper_weight_price.destroy

    respond_to do |format|
      format.html { redirect_to(paper_weight_prices_url) }
      format.xml  { head :ok }
    end
  end
end
