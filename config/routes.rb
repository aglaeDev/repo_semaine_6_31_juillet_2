Rails.application.routes.draw do
  root 'gossips#index'
  resources :gossips
 
  get '/team', to: 'team#team'
  get '/contact', to: 'contact#contact' 
end
