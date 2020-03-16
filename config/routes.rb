Rails.application.routes.draw do
  resources :doctors
  devise_for :users, :controllers => { :registrations => "registrations" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "patients#all_doctors"

  resources :users
  resources :patients do
    member do
      get 'all_doctors'
    end
    resources :appointments
  end
end
