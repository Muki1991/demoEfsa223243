Rails.application.routes.draw do

  devise_for :users
  
    devise_scope :user do  
      get '/users/sign_out' => 'devise/sessions#destroy'     
   end

root 'pages#index', as: 'index'

get '/second_page' => 'pages#second_page'

get '/kontakt' => 'pages#kontakt'

get '/trening' => 'pages#trening'

get '/o_nama' => 'pages#o_nama'

end
