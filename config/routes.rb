Rails.application.routes.draw do
  resources :books do
    collection do 
      get 'isbn/:isbn', to: 'books#find_by_isbn'
    end
  end
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
