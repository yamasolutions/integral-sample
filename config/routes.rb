Rails.application.routes.draw do
  # Integral Routes
  mount Integral::Engine, at: '/', as: 'integral'

  # Must specify root so that #root_url method is defined
  root to: 'integral/static_pages#home'

  resources :special_offers

  # Extend Integral engine routes
  Integral::Engine.routes.draw do
    namespace :backend, path: Integral.backend_namespace do
      resources :special_offers, except: [ :show ] do
        member do
          get 'activities', controller: 'special_offers', as: :activities
          get 'activities/:activity_id', to: 'special_offers#activity', as: :activity
        end
      end
    end
  end
end
