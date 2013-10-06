TurnipApp::Application.routes.draw do
  resources :entries do
    resources :comments
  end

  root to: 'entries#index'
end
