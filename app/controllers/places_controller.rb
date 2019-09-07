class PlacesController < ApplicationController
	
	def index
		@places = Place.all
	end

	def new
		@place = Place.new
	end

	def create
		Place.create(place_params)
		redirect_to root_path
	end

	private

	def place_params
		params.require(:place).permit(:name, :description, :address)
	end



end




#@places = Place.paginate(page: params[:page], per_page: 10)
#^^put in place of @places = Place.all
#<%= will_paginate @places %> 
#^^ put in index.html.erb