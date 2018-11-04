Rails.application.routes.draw do  
  resources :meetings
  resources :planning_periods do
    resources :shift_patterns
  end
  root controller: :meetings, action: :index
end
