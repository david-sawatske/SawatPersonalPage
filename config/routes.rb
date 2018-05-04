Rails.application.routes.draw do
  resources :projects
  resources :blogs

  devise_for :users, path: '', path_names: { sign_in: 'login',
                                             sign_out: 'logout',
                                             sign_up: 'register' }
  root 'pages#home'
end
