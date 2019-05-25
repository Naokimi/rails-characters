Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "characters#index"

  resources :characters do
    resources :powers, only: [:new, :create, :destroy]
  end
end
