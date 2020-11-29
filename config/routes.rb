Rails.application.routes.draw do
  resources :hellos
#set routes that are used by controllers root route is default
  get 'index' => 'home#index'
  get 'duk' => 'home#duk'
  get 'contact' => 'home#contact'
  get 'order' => 'order#order'
  get 'create' => 'order#new'
  root 'home#index'
end
