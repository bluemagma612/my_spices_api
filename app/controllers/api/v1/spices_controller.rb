class Api::V1::SpicesController < ApplicationController
	before_action :set_spice, only: [:show, :update, :destroy]

	def index
		@spices = Spice.all

		render json: @spices if stale?(etag: @spices.all, last_modified: @spices.maximum(:updated_at))
	end

	def show
    render json: @spice if stale?(@spice)
  	end


	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spice
      @spice = Spice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spice_params
      params.require(:spice).permit(:name, :img_path, :description)
    end

    def default_serializer_options
    	{ root: false }
    end

end