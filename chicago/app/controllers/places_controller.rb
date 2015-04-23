class PlacesController < ApplicationController
	def index
		@places = Place.all
	end
	def show
		@place = Place.find_by(:id=> params["id"])
		if @place
			@reviews = Review.where(:place_id=>@place.id).order("id DESC")
		else
			redirect_to "/", notice: "Place not found."
		end

	end

	def delete
		place = Place.find_by(:id => params["id"])
		if place != nil
			place.delete
			redirect_to "/"
		else
			redirect_to "/", notice: "Place not found."
		end

	end
	def new
	end
	def create
		if params[:title]!=""
			place = Place.new
			place.title = params["title"];
			place.photo_url = params["photo_url"]
			place.admission_price = (params["admission_price"].to_f*100).to_i
			place.description = params["description"]
			place.save
			redirect_to "/"
		else
			redirect_to "/", notice: "Can not add a place without title"
		end

	end
	def edit
		@place = Place.find_by(:id=>params["id"])
		if !@place
			redirect_to "/", notice: "Place not found."
		end
	end
	def update
		place = Place.find_by(:id=>params["id"])
		if place
			if params[:title]!=""
			place.title = params["title"];
			place.photo_url = params["photo_url"]
			place.admission_price = (params["admission_price"].to_f*100).to_i
			place.description = params["description"]
			place.save
			redirect_to "/places/#{place.id}"
			else
				redirect_to "/", notice: "Can not update a place without title"
			end
		else
			redirect_to "/", notice: "Place not found."
		end


	end
	def add_review
		place = Place.find_by(:id => params["id"])
		if place
			if params["title"]!=""
				review = Review.new
				review.place_id = place.id
				review.rating = params["rating"].to_i
				review.title = params["title"]
				review.description = params["description"]
				review.save

				redirect_to "/places/#{place.id}"
			else
				redirect_to "/places/#{place.id}", notice: "Review title can't be empty"
			end
		else
			redirect_to "/", notice: "Place not found."
		end
		
	end


end
