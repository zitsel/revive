Revive::Application.routes.draw do
  resources :checks

  resources :transactions

  resources :photos

root :to => 'products#index'

resources :products do
  get :ebay, on: :member
end
resources :items do
  get :retail, on: :member
  get :processing, on: :member
  get :retail, on: :member
end

resources :statuses


match 'clothing' => 'products#categorized'
match 'clothing/:classification/:category' => 'products#categorized'
match 'clothing/:category' => 'products#categorized'

match 'clothing/product/:id' => 'products#show'
match 'products/show/:id' => 'products#show'
match 'ebay_listings/new/item_id/:item_id' => 'ebay_listings#new'

resources :departments do
  resource :needed_item_details
end
resources :ebay_listings

  match 'ebay_listings/status/:status' => 'ebay_listings#index'

  match 'items/:id/inspection' => 'items#inspection', :via => :get

  match '/list/:name' => 'items#status'

  match '/reports' => 'reports#index'
  match '/reports/sales/from/:from/to/:to' => 'reports#sales'
  match '/reports/sales/' => 'reports#sales'
  match '/reports/department_performance' => 'reports#department_performance'
  match '/reports/awaiting_shipment' => 'reports#awaiting_shipment'
  #namespace :admin do
    #namespace :inventory do
    #  resources :items, :departments, :needed_item_details, :statuses
    #end
   # namespace :ebay do
    #  resources :ebay_listings
    #end
    #namespace :sales do
   # end
   # namespace :accounting do
    #end
   #namespace :purchases do
    #end
  #end

end
