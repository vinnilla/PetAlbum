class UsersController < ApplicationController
  before_action :authenticate_user!

  def main
  	@pets = Pet.all
  end

end