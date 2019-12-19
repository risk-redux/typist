Rails.application.routes.draw do
  get 'information_classes', to: 'information_classes#index', as: :information_classes

  get 'information_group/:id', to: 'information_groups#show', as: :information_group

  get 'information_types', to: 'information_types#index', as: :information_types
  get 'information_types/:id', to: 'information_types#show', as: :information_type

  get 'about', to: 'about#index', as: :about

  root to: 'welcome#index'
  get 'welcome', to: 'welcome#index', as: :welcome
end
