Rails.application.routes.draw do
  devise_for :users
  root 'users#main'

  get 'users' => 'users#main'

  get 'photos/main'

  get 'albums/main'
  ######
  #PETS
  ######
  get 'pets' => 'pets#main'
  #create profile
  post 'pets' => 'pets#create' #post
  get 'pets/new' => 'pets#new', as: :new_pet #retrieve form
  #display profile
  get 'pets/:id' => 'pets#show', as: :pet 
  #edit profile
  get 'pets/:id/edit' => 'pets#edit', as: :edit_pet 
  patch 'pets/:id' => 'pets#update' 
  #delete profile
  delete 'pets/:id' => 'pets#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
