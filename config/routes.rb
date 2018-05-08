Rails.application.routes.draw do
  resources :blogs

  devise_for :users, path: '', path_names: { sign_in: 'login',
                                             sign_out: 'logout',
                                             sign_up: 'register' }

  resources :projects, except: [:show] do
    put :sort, on: :collection
  end

  root 'pages#home'
end
