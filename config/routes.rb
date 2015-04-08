PostitTemplate::Application.routes.draw do
  root 'posts#index'

  resources :posts, except: [:destroy]
end
