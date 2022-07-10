Rails.application.routes.draw do
  resources :questions
  root 'pages#home'
  resources :quizzes
end
