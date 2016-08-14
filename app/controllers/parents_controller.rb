class ParentsController < ApplicationController


	def create

		parent = Parent.create(name: params[:name], email: params[:email])
		# parent = Parent.create(parents_params)
		render json: parent
	end

	def index
		render json: Parent.all, includes:['babysitters','requests','bookings', 'booking_requests']
	end

	def show
		parent = Parent.find(params[:id])
		render json: parent
	end

	private

	 def parents_params
		 params.require(:parents).permit(:name, :email)
	 end



end
