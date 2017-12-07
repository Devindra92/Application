module Api
	module V1
		class RecordsController < ApplicationController
			respond_to? :json
			
			def index
			  render json: Record.all
  		end

  		def graphs
  			
  		end

		  def show
		  	respond_with Record.find(params[:id])
		  end

		  def create
		   respond_with Record.create(params[:record])
		  end

		  def update
		    respond_with Record.all(params[:id], params[:record])
		  end

		  def destroy
		    respond_with Record.destroy(params[:id])
		  end

		  private
		    # Use callbacks to share common setup or constraints between actions.
		    def set_record
		      @record = Record.find(params[:id])
		    end

		    # Never trust parameters from the scary internet, only allow the white list through.
		    def record_params
		      params.require(:record).permit(:emis, :centre_no, :name, :wrote_2014, :passed_2014, :wrote_2015, :passed_2015, :wrote_2016, :passed_2016)
		    end
		 end
	end
end