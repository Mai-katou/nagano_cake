Rails.application.routes.draw do

   scope module: :public do

    get 'addresses/index'
    get 'addresses/edit'

    get 'orders/new'
    get 'orders/complete'
    get 'orders/index'
    get 'orders/show'

    get 'cart_items/index'

    get 'customers/my_page' => 'customers#show'
    get 'customers/edit' =>'customers#edit'
    patch 'customers' => 'customers#update'
    get 'customers/unsubscribe' => "customers#unsubscribe"
    patch 'customers/withdraw' => "customers/withdraw"

    get 'items/index'
    get 'items/show'

    root to: 'homes#top'
    get "/about" => "homes#about"
  end



  namespace :admin do
    get '/' => "homes#top"
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items, only:[:index, :new, :create, :show, :edit, :update]
    resources :customers, only:[:index, :show, :edit, :update]
    resources :orders, only:[:show, :update]
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
