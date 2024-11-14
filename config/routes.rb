Rails.application.routes.draw do
  resources :articles
  #get 'articles', to:'articles#index'
  #put 'articles/update'
  #delete 'articles/destroy'
  #post 'articles/create'
  #get 'articles/:id', to:'articles#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
