Rails.application.routes.draw do

  get 'main/home'

  get 'main/price'

  get 'main/contact'

  get 'main/about'


  root :to => redirect('/main/home')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
