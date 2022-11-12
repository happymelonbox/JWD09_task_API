Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :task, only: [:create, :destroy, :index, :edit]
    end
  end

end
