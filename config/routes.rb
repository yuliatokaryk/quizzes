Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  resources :quizzes do
    resources :questions, :except => [:show, :edit, :update]
  end
end
