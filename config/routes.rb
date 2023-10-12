Rails.application.routes.draw do
  # get 'emplpoyee/index'
  # get 'emplpoyee/new'
  # get "/students" => 'students#index'
  # get '/students/:id', to: 'students#index'
  # get 'students/:id', to: 'students#index', defaults: { format: 'jpg' }
  get ':is', to: 'students#index', as: :show_students

  # resources :projects
  # get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # c*****************collection and member routing*************************
   #do
  #   get :preview_profile,on: :member
  #   get :search_user,on: :collection
  # end
  root 'students#index'
  resources :students
  get "*path" => "students#index"
end
