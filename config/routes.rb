Rails.application.routes.draw do
  resources :gsd_lists do
    resources :gsd_items do
    member do
    	patch :complete
  end
end
  end
  root "gsd_lists#index"
end
