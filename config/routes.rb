IsItProfanity::Application.routes.draw do
  
  match '/about' => 'home#about'
  get '/:q' => 'home#index', :as => 'test'

  root :to => 'home#index'

end
