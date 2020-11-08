Rails.application.routes.draw do
  get 'index' => 'home#index'
  get 'duk' => 'home#duk'
  get 'contact' => 'home#contact'
  get 'order' => 'order#order'
  root 'home#index'
end
