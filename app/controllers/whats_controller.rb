class WhatsController < ApplicationController
  # GET /whats
  # GET /whats.json
  def index
    @whats = What.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @whats }
    end
  end

  # GET /whats/1
  # GET /whats/1.json
  def show
    @what = What.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @what }
    end
  end

  # GET /whats/new
  # GET /whats/new.json
  def new
    @what = What.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @what }
    end
  end

  # GET /whats/1/edit
  def edit
    @what = What.find(params[:id])
  end

  # POST /whats
  # POST /whats.json
  def create
    @what = What.new(params[:what])

    respond_to do |format|
      if @what.save
        format.html { redirect_to @what, notice: 'What was successfully created.' }
        format.json { render json: @what, status: :created, location: @what }
      else
        format.html { render action: "new" }
        format.json { render json: @what.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /whats/1
  # PUT /whats/1.json
  def update
    @what = What.find(params[:id])

    respond_to do |format|
      if @what.update_attributes(params[:what])
        format.html { redirect_to @what, notice: 'What was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @what.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whats/1
  # DELETE /whats/1.json
  def destroy
    @what = What.find(params[:id])
    @what.destroy

    respond_to do |format|
      format.html { redirect_to whats_url }
      format.json { head :no_content }
    end
  end
end
