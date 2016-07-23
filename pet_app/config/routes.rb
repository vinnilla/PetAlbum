Rails.application.routes.draw do
  devise_for :users
  root 'users#main'

  get 'users' => 'users#main'
  
  #####
  #PETS
  #####
  get 'pets' => 'pets#main'
  #create profile
  get 'pets/new' => 'pets#new', as: :new_pet #retrieve form
  post 'pets' => 'pets#create' #post
  #display profile
  get 'pets/:id' => 'pets#show', as: :pet 
  #edit profile
  get 'pets/:id/edit' => 'pets#edit', as: :edit_pet 
  patch 'pets/:id' => 'pets#update', as: :update_pet 
  #delete profile
  delete 'pets/:id' => 'pets#delete'

  #######
  #ALBUMS
  #######
  get 'pets/:pet_id/albums' => 'albums#main', as: :albums

  get 'pets/:pet_id/albums/new' => 'albums#new', as: :new_album
  post 'albums' => 'albums#create', as: :create_album

  get 'albums/:id' => 'albums#show', as: :album

  get 'albums/:id/edit' => 'albums#edit', as: :edit_album
  patch 'albums/:id' => 'albums#update', as: :update_album

  delete 'albums/:id' => 'albums#delete'

  #######
  #PHOTOS
  #######
  get 'albums/:album_id/photos/' => 'photos#main', as: :photos

  get 'albums/:album_id/photos/new' => 'photos#new', as: :new_photo
  post 'photos' => 'photos#create', as: :create_photo

  get 'photos/:id' => 'photos#show', as: :photo

  get 'photos/:id/edit' => 'photos#edit', as: :edit_photo
  patch 'photos/:id' => 'photos#update', as: :update_photo

  delete 'photos/:id' => 'photos#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
