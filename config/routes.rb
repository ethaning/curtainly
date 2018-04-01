Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  root to: 'home#index'

  get 'mail', to: 'home#mail'

  get 'about_us', to: 'home#about_us'

  get 'testimonials', to: 'home#testimonials'

  post 'form', to: 'home#form'

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
