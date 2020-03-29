Rails.application.routes.draw do
  namespace :admin do
    resources :books do
      get 'books/isbn/:isbn', to: 'books#show_by_isbn'
    end
    resources :authors
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
