Rails.application.routes.draw do
  root 'home#index'
  get 'home/show'
   post '/mail', to: 'contact#mail'
  get '/contact', to: 'contact#contact', as: "contact"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
