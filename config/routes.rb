# frozen_string_literal: true
Rails.application.routes.draw do
  resources :blog_templates
<<<<<<< HEAD
  resources :profiles
=======
  resources :profiles, except: [:new, :edit]
>>>>>>> user_table
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
