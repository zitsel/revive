Revive::Application.routes.draw do
root :to => 'products#categorized'
match 'clothing' => 'products#categorized'
match 'clothing/:category' => 'products#categorized'
match 'clothing/product/:id' => 'products#show'
match 'products/show/:id' => 'products#show'
 resources :items
  resources :statuses
  resources :departments do
    resource :needed_item_details
  end
  resources :ebay_listings
  match 'ebay_listings/status/:status' => 'ebay_listings#index'
  match 'items/check_in' => 'items#check_in'
  match 'items/:id/inspection' => 'items#inspection', :via => :get
  match 'items/:id/processing' => 'items#processing'
  match 'items/:id/listing' => 'items#listing'
  match 'items/:id/auction' => 'items#auction'
  match 'items/list/status/:name' => 'items#status'
  
end
