class UsersController < ApplicationController

  def main
  	@pets = Pet.all
  	@photos = Photo.all
  	@pet_array = []
    @pet_indexes = []
  	@photo_array = []
  	while @pet_array.length < 6 and @pet_array.length < @pets.length do
  		@test = true
  		@num = rand(@pets.length).to_i

  		@pet_indexes.each do |x|
  			if x == @num
          @test = false
        end
  		end

  		if @test
  			#find album belonging to pet
  			puts @pets[@num].id
  			@album = Album.where(pet_id: @pets[@num].id)
  			if @album.length != 0
	  			#find one photo
	  			@photo_array << Photo.where(album_id: @album[0].id)[0]
  				@pet_array << @pets[@num]
          @pet_indexes << @num
	  		end
  		end

  	end
  end

  def search
  end

  def results
    @q = params[:query]
    @pet = Pet.where({name: @q})
  end

end