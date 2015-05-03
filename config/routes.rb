Rails.application.routes.draw do

  root 					'up_arise#Home'
  get 'about'		=>	'up_arise#About'
  get 'members'		=>	'up_arise#Members'
  get 'events'		=>	'up_arise#Events'
  get 'contact'		=>	'up_arise#Contact'
  get 'signup'		=>	'users#new'
  put 'role'		=>  'users#update'
  get 'login'		=>	'sessions#new'
  post 'login'		=>	'sessions#create'
  delete 'logout'	=>	'sessions#destroy'
  
  resources :users 
  resources :articles


end
