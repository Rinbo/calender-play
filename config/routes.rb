Rails.application.routes.draw do  
  get 'shifts/show'
  resources :meetings
  resources :planning_periods do
    resources :shift_patterns do
      resources :shifts, only: [:show]
    end
  end
  root controller: :meetings, action: :index
end
