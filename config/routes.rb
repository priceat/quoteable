Splurty::Application.routes.draw do

  root 'quotes#index'
  resources :quotes
  resources :categories do
    resources :quotes, :only => :index
  end
  get 'about', :to => 'quotes#about'
end
