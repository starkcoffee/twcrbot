Twrecruitbot::Application.routes.draw do
  resources :code_submissions
  match '/auth/:provider/callback', :to => 'session#create'
  root :to => 'code_submissions#index'
end
