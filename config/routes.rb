Rails.application.routes.draw do
  resources :tasks do
  	member do
  		put :change
  	end
  end
   devise_for :users
    
devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'
  root "pages#home"
  get 'about' => "pages#about"

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
