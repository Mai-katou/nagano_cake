Rails.application.routes.draw do

  namespace :public do
    get 'addresses/index'
    get 'addresses/edit'
  end
  namespace :public do
    get 'orders/new'
    get 'orders/complete'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :public do
    get 'cart_items/index'
  end
  namespace :public do
    get 'customers/my_page' => 'customers#show'
   resources :customers, only: [:edit, :update, :unsubscribe, :withdraw]
  end
  namespace :public do
    get 'items/index'
    get 'items/show'
  end
  namespace :public do
    root to: 'homes#top'
    get 'homes/about'
  end

  namespace :admin do
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, only:[:index, :new, :create, :show, :edit, :update]
    resources :customers, only:[:index, :show, :edit,:update]
    get '/' => "homes#top"
  end

 devise_for :customers,skip: [:passwords,], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }


  devise_for :admin, skip:[:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }


 # devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
