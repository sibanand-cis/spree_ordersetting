Spree::Core::Engine.routes.draw do
  resources :order_settings

namespace :admin do
    resources :order_settings
  end

  # Add your extension routes here
end
