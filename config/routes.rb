Rails.application.routes.draw do
  root to: "api/v1/tasks"
  namespace :api do
    namespace :v1 do
      resources :tasks, only: [:create, :destroy, :index, :edit]
    end
  end

end
