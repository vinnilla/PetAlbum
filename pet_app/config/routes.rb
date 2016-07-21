Rails.application.routes.draw do
  get 'photos/main'

  get 'albums/main'

  get 'pets/main'


  ####
  #USERS#
  ####
  get 'users/main'
  #create profile
  post 'users' => 'users#create' #post
  get 'users/new' => 'users#new', as: :new_user #retrieve form
  #display profile
  get 'users/:id' => 'users#show', as: :user 
  #edit profile
  get 'users/:id/edit' => 'users#edit', as: :edit_user 
  patch 'users/:id' => 'users#update' 
  #delete profile
  delete 'users/:id' => 'users#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
