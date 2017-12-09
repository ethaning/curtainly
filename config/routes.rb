Rails.application.routes.draw do
  devise_for :admins
  root to: 'home#index'

  get 'home/index'

  get 'home/mail'

  post 'home/form'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
