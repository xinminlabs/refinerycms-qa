Refinery::Core::Engine.routes.draw do
  # Frontend routes
  namespace :qa, :path => '' do
    get Refinery::Qa.page_path_new, :to => 'questions#new', :as => 'new_question'

    resources :contact, :path => Refinery::Qa.post_path, :only => [:create],
              :as => :questions, :controller => 'questions'

    resources :contact, :path => '', :only => [], :as => :questions, :controller => 'questions' do
      get :thank_you, :path => Refinery::Qa.page_path_thank_you, :on => :collection
    end

    resources :questions, :only => [:index, :show]
  end

  # Admin routes
  namespace :qa, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :questions, :only => [:index, :show, :destroy] do
        resources :answers, :only => [:create, :update]
      end
    end
  end
end
