Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tasks, only: [:create, :destroy, :index, :edit]
    end
  end

end
