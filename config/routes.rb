Rails.application.routes.draw do
  get 'information_classes', to: 'information_classes#index', as: :information_classes

  get 'information_group/:group_code', constraints: { group_code: /[A-Za-z0-9\.]+?/, format: /json|csv|xml|yaml/ }, to: 'information_groups#show', as: :information_group

  get 'information_types', to: 'information_types#index', as: :information_types
  get 'information_types/:type_code', constraints: { type_code: /[A-Za-z0-9\.]+?/, format: /json|csv|xml|yaml/ }, to: 'information_types#show', as: :information_type

  get 'about', to: 'about#index', as: :about

  root to: 'welcome#index'
  get 'welcome', to: 'welcome#index', as: :welcome
end
