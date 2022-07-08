Rails.application.routes.draw do
  root 'pages#home'
  resources :quizzes
end
