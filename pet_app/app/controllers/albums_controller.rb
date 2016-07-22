class AlbumsController < ApplicationController

  def main
  end

  def new
  	@album = Album.new
  end

  def create
  	@album = Album.new 
  end

  def show

  end

  def edit

  end

  def update

  end

  def delete

  end

  private:

  def set_album

  end

  def album_params
  	params.require(:album).permit(:)
  end

end
