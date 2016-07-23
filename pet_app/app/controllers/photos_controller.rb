class PhotosController < ApplicationController

  def main
    @photos = Photo.where(album_id: set_album_id)
  end

  def new
  	@photo = Photo.new
    @album_id = set_album_id
  end

  def create
  	@photo = Photo.new(photo_params)
    if @photo.save
      redirect_to album_path @photo.album_id
    else
      render :new
    end
  end

  def show
    @photo = set_photo
    @album_id = set_album_id
  end

  def edit
    @photo = set_photo
  end

  def update
    @photo = set_photo
    if @photo.update_attributes(photo_params)
      redirect_to photo_path @photo.id
    else
      render :edit
    end
  end

  def delete
    @photo = set_photo
    @album_id = @photo.album_id
    @photo.destroy
    redirect_to album_path(@album_id)
  end

  private

  def set_photo
    Photo.find(params[:id])
  end

  def set_album_id
    params[:album_id]
  end

  def photo_params
  	params.require(:photo).permit(:description, :album_id, :avatar)
  end

end
