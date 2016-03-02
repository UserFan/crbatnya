Rails.application.routes.draw do
  
  root  'static_pages#home'
  
  get '/about', to: 'static_pages#about'
  get '/list_drugs', to: 'static_pages#list_drugs'
  get '/preferential_drugs', to: 'static_pages#preferential_drugs'
  get '/guarantee_program', to: 'static_pages#guarantee_program'
  get '/insurance_company', to: 'static_pages#insurance_company'
end
