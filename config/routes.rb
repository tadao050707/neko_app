Rails.application.routes.draw do
  resources :symptoms
  get 'symptoms/get_details', to: 'symptoms#get_details', as: 'symptoms_get_details'
end
