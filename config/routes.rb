Rails.application.routes.draw do
  mount Integral::Engine, at: "/", as: 'integral'
  root to: 'integral/static_pages#home'
end
