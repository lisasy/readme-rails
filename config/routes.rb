Readmeapp::Application.routes.draw do  
  resources :comments

  resources :highlights

  root to: "articles#index"
  resources :articles
end
