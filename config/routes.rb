Rails.application.routes.draw do
  get 'emplpoyee/idex'
  get 'emplpoyee/new'
  # resources :projects
  # get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # c*****************collection and member routing*************************
  resources:students #do
  #   get :preview_profile,on: :member
  #   get :search_user,on: :collection
  # end
  # get  'students/index'
end
