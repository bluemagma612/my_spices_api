class Api::V1::CuisinesController < ApplicationController
	before_action :set_cuisine, only: [:show, :update, :destroy]

	def index
		@cuisines = Cuisine.all

		render json: @cuisines if stale?(etag: @cuisines.all, last_modified: @cuisines.maximum(:updated_at))
	end

	def show
    render json: @cuisine if stale?(@cuisine)
  	end


	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuisine
      @cuisine = Cuisine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuisine_params
      params.require(:cuisine).permit(:name, :img_path, :description)
    end

    def default_serializer_options
    	{ root: false }
    end

end
