Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
    # resources :reviews, shallow: true -> will give you index, new, create

    collection do
      get 'top'
    end

    member do
      get 'chef'
    end
  end

  resources :reviews, only: [ :edit, :update, :destroy ]
end
