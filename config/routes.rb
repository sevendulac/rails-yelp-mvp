Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    get 'top', on: :collection # get 'restaurants/top', to: 'restaurants#top'
    get 'chef', on: :member # get 'restaurants/:id/chef', to: 'restaurants#chef'
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]



  root to: 'restaurants#index'
end
