class ShareholdersController < ApplicationController
  # GET /shareholders
  # GET /shareholders.json
  def index
    @shareholders = Shareholder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shareholders }
    end
  end

  # GET /shareholders/1
  # GET /shareholders/1.json
  def show
    @shareholder = Shareholder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shareholder }
    end
  end

  # GET /shareholders/new
  # GET /shareholders/new.json
  def new
    @shareholder = Shareholder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shareholder }
    end
  end

  # GET /shareholders/1/edit
  def edit
    @shareholder = Shareholder.find(params[:id])
  end

  # POST /shareholders
  # POST /shareholders.json
  def create
    @shareholder = Shareholder.new(params[:shareholder])

    respond_to do |format|
      if @shareholder.save
        format.html { redirect_to @shareholder, notice: 'Shareholder was successfully created.' }
        format.json { render json: @shareholder, status: :created, location: @shareholder }
      else
        format.html { render action: "new" }
        format.json { render json: @shareholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shareholders/1
  # PUT /shareholders/1.json
  def update
    @shareholder = Shareholder.find(params[:id])

    respond_to do |format|
      if @shareholder.update_attributes(params[:shareholder])
        format.html { redirect_to @shareholder, notice: 'Shareholder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shareholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shareholders/1
  # DELETE /shareholders/1.json
  def destroy
    @shareholder = Shareholder.find(params[:id])
    @shareholder.destroy

    respond_to do |format|
      format.html { redirect_to shareholders_url }
      format.json { head :no_content }
    end
  end
end
