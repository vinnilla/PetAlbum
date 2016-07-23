class PetsController < ApplicationController
  before_action :authenticate_user!
 
  def main
    @pets = Pet.where(user_id: current_user.id)
  end

  def new
    @pet = Pet.new()
  end
  
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def show
    @pet = set_pet
  end  

  def edit
  	@pet = set_pet
  end

  def update
  	@pet = set_pet
  	if @pet.update_attributes(pet_params)
  		redirect_to pet_path
  	else
  		render :edit
  	end
  end

  def delete
  	@pet = set_pet
  	@pet.destroy
  	redirect_to pets_path
  end

  private

  def set_pet
  	Pet.find(params[:id])
  end

  def pet_params
  	params.require(:pet).permit(:name, :gender, :breed, :bio, :user_id)
  end
end
