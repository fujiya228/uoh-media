Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  get '/' => 'pages#top'

  get '/user' => 'pages#user'
  get '/subject' => 'pages#subject'
end

