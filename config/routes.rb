Rails.application.routes.draw do
  # get 'welcome/index'
  root 'welcome#index'
  
  get 'history' => 'welcome#history'

  get 'search' =>'welcome#search'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "up" => "rails/health#show", as: :rails_health_check

end
