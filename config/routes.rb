Rails.application.routes.draw do  
  resources :meetings
  resources :planning_periods
  root controller: :meetings, action: :index
end
