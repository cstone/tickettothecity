class CityGuidesController < ApplicationController
  # GET /city_guides
  # GET /city_guides.json
  def index
    @city_guides = CityGuide.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @city_guides }
    end
  end

  # GET /city_guides/1
  # GET /city_guides/1.json
  def show
    @city_guide = CityGuide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @city_guide }
    end
  end

  # GET /city_guides/new
  # GET /city_guides/new.json
  def new
    @city_guide = CityGuide.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @city_guide }
    end
  end

  # GET /city_guides/1/edit
  def edit
    @city_guide = CityGuide.find(params[:id])
  end

  # POST /city_guides
  # POST /city_guides.json
  def create
    @city_guide = CityGuide.new(params[:city_guide])

    respond_to do |format|
      if @city_guide.save
        format.html { redirect_to @city_guide, notice: 'City guide was successfully created.' }
        format.json { render json: @city_guide, status: :created, location: @city_guide }
      else
        format.html { render action: "new" }
        format.json { render json: @city_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /city_guides/1
  # PUT /city_guides/1.json
  def update
    @city_guide = CityGuide.find(params[:id])

    respond_to do |format|
      if @city_guide.update_attributes(params[:city_guide])
        format.html { redirect_to @city_guide, notice: 'City guide was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @city_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /city_guides/1
  # DELETE /city_guides/1.json
  def destroy
    @city_guide = CityGuide.find(params[:id])
    @city_guide.destroy

    respond_to do |format|
      format.html { redirect_to city_guides_url }
      format.json { head :no_content }
    end
  end
end
