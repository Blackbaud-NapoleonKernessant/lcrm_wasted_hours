Rails.application.routes.draw do
  root 'wasted_hours#index'
  get 'wasted_hours/new'
  get 'wasted_hours/process_new_form'
  get 'wasted_hours/delete_column'
  get 'wasted_hours/delete_column_action'
 # get 'wasted_hours/admin_factory_reset'
end
