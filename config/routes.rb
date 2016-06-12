Rails.application.routes.draw do

  get "/users/:id" => redirect("/users/new"), constraints: { id: /[1-9]*/ }

  resources :users



  get 'main/home'

  get 'main/price'

  get 'main/contact'

  get 'main/about'

  get 'main/profile'

  root :to => redirect('/main/home')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
