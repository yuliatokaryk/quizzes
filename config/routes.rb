Rails.application.routes.draw do
  root 'pages#home'

  resources :quizzes do
    resources :questions, :except => [:show, :edit, :update]
  end
end
