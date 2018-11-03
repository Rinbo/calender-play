Rails.application.routes.draw do
  resources :meetings
  root controller: :meetings, action: :index
end
