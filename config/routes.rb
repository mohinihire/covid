Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'patient/index'
  get 'patient/patientadd'

resources :patients do
  get :id, on: :member
end

  resources :patients
  get 'patient/add'
  get 'patient/delete'
  get 'patient/destroy'
  get 'patient/edit'
  get 'patient/update'
  get 'patient/search'
  get 'patient/save'
  get 'patient/list'
  get 'patient/show'
  get 'patient/create'
  get 'patient/new'
  get 'doctor/finalreport'
  get 'doctor/report1'
  get 'patient/dummy'
get 'doctor/create'
get 'proj/corona'
get 'proj/polio'
get 'proj/h1n1'
get'doctor/suggest'
get 'doctor/new'
  get 'patient/suggest'
  get 'proj/welcome'
  root 'proj#welcome'
  get 'patient/patientlist'
  get  'doctor/patientlist'
 # root 'patients#index'
  get "/patient",to:"patient#index"

  match ':controller(/:action(/:id(.:format)))',:via =>[:get,:post]
end
