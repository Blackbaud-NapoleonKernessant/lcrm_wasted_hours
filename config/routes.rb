Rails.application.routes.draw do
  root 'wasted_hours#index'
  get 'wasted_hours/new'
end
