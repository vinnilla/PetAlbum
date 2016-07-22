class PetsController < ApplicationController
  def main
    @pets = Pet.all
  end
  
  def create
  	@pet = Pet.new(pet_params)
  	if @pet.save
  		redirect_to 'users/main'
  	else
  		render :new
  	end
  end

  def new
  	@pet = Pet.new
    @pet[:user_id] = current_user
  end

  def show
    render layout: "main"
  	@pet = set_pet
  end

  def edit
  	@pet = set_pet
  end

  def update
  	@pet = set_pet
  	if @pet.update_attributes(pet_params)
  		redirect_to 'pets/main'
  	else
  		render :edit
  	end
  end

  def delete
  	@pet = set_pet
  	@pet.destroy
  	redirect_to 'pets/main'
  end

  private

  def set_pet
  	Pet.find(params[:id])
  end

  def pet_params
  	params.require(:pet).permit(:name, :gender, :breed, :bio, :user_id)
  end
end
