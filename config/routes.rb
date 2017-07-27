Rails.application.routes.draw do


  
    devise_for :admins
  

 

  mount Ckeditor::Engine => '/ckeditor'
 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'articles#index'
	get 'russiancoffeenews' => 'articles#news'
  get 'city_render' => 'cities#city_render'
  get 'moscowcoffeefestival' => 'festivals#index'
  get 'russiancoffeecup' => 'cities#index'
  get 'russiancoffeeawards' => 'awards#index'
  get 'russiancoffeecup/:id' => 'cities#show', as: :city

  resources :articles
    resources :awards
     resources :galeries
     resources :festivals do
       get :timetable_tab, on: :member
     end
         resources :cities
        resources :organizators
          resources :contacts
          resources :maps
          resources :subscriptions


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
