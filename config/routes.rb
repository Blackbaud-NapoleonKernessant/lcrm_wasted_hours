Rails.application.routes.draw do
  root 'wasted_hours#index'
  get 'wasted_hours/new'
  get 'wasted_hours/process_new_form'
end
