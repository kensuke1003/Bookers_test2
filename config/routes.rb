Rails.application.routes.draw do
  get 'books/new'
  get 'books/create'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'books#new'
end
