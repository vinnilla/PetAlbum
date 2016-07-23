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
  patch 'pets/:id' => 'pets#update' 
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
  patch 'albums/:id' => 'albums#update'

  delete 'albums/:id' => 'albums#delete'

  #######
  #PHOTOS
  #######
  get 'photos/main'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
