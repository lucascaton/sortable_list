SortableList::Application.routes.draw do
  root to: 'users#index'

  resources :users, only: [:index] do
    collection do
      put :reorder
    end
  end
end
