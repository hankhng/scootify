class ScootersController < ApplicationController
  before_action :set_scooter, only: [:show, :edit, :update, :destroy]

# GET /scooters
  def index
    @scooters = Scooter.all
    # @category = params[:category]
    # @scooters2 = @scooters.where(category: @category)
  end

  # GET /scooters/1
  def show
    # @scooter = Scooter.find(params[:id])
  end

  # GET /scooters/new
  def new
    @scooter = Scooter.new
  end


  # GET /scooters/1/edit
  def edit
  end

  # POST /scooters
  def create

    @scooter = Scooter.new(scooter_params)

    if @scooter.save
      redirect_to @scooter, notice: 'scooter was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /scooters/1
  def update
    if @scooter.update(scooter_params)
      redirect_to @scooter, notice: 'scooter was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /scooters/1
  def destroy
    @scooter.destroy
    redirect_to scooters_url, notice: 'scooter was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scooter
      @scooter = Scooter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scooter_params
      params.require(:scooter).permit(:brand, :model, :transmission, :year, :price_per_day, :address, :license_type)
    end

end

