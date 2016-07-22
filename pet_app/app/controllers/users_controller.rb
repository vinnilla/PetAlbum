class UsersController < ApplicationController

  def main
  	@pets = Pet.all
  end

end