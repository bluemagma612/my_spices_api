class Api::V1::CuisinesController < ApplicationController
	before_action :set_cuisine, only: [:show, :update, :destroy]

	def index
		#if passed a spice id parameter use it as filter, else show all cuisines
    if @spice then
      @cuisines = @spice.cuisines
    else
      @cuisines = Cuisine.all
    end

		render json: @cuisines if stale?(etag: @cuisines.all, last_modified: @cuisines.maximum(:updated_at))
	end

	def show
    render json: @cuisine if stale?(@cuisine)
  	end

  # POST /cuisines
  # POST /cuisines.json
  def create
    @cuisine = Cuisine.new(spice_params)

    if @cuisine.save
      render json: @cuisine, status: :created
    else
      render json: @cuisine.errors, status: :unprocessable_entity
    end
  end

	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuisine
      @cuisine = Cuisine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuisine_params
      params.require(:cuisine).permit(:name, :imgPath, :description)
    end

    def default_serializer_options
    	{ root: false }
    end

    #look for a cuisine_id in the request
    def find_cuisine
        if params[:spice_id]
          @spice = Cuisine.find(params[:spice_id])
        end
    end


end
