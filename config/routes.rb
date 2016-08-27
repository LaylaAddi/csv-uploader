Rails.application.routes.draw do

 
  resources :companies do
    collection {post :import}
  end
    
  resources :consumer_complaints do
    collection {post :import}
  end
  root to: "consumer_complaints#index"
end

