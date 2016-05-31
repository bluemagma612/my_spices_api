class Api::V1::SpicesController < ApplicationController
	before_action :set_spice, only: [:show, :update, :destroy]
  before_action :find_cuisine

	def index
    #if passed a cuisine id parameter use it as filter, else show all spices
    if @cuisine then
		  @spices = @cuisine.spices
    else
      @spices = Spice.all
    end

		render json: @spices if stale?(etag: @spices.all, last_modified: @spices.maximum(:updated_at))
	end

	def show
    render json: @spice if stale?(@spice)
  	end

  # POST /spices
  # POST /spices.json
  def create
    @spice = Spice.new(spice_params)

    if @spice.save
      render json: @spice, status: :created
    else
      render json: @spice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spices/1
  # PATCH/PUT /spices/1.json
  def update
    if @spice.update(spice_params)
      head :no_content
    else
      render json: @spice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spices/1
  # DELETE /spices/1.json
  def destroy
    @spice.destroy

    head :no_content
  end


	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spice
      @spice = Spice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spice_params
      params.require(:spice).permit(:name, :imgPath, :description)
    end

    def default_serializer_options
    	{ root: false }
    end

    #look for a cuisine_id in the request
    def find_cuisine
        if params[:cuisine_id]
          @cuisine = Cuisine.find(params[:cuisine_id])
        end
    end

end