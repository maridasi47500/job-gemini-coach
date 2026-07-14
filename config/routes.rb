Rails.application.routes.draw do
  resources :application_for_a_jobs
      devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  resources :employeurs
  resources :secteurs
  resources :canal_recrutements
  resources :employeur_types
  resources :skills
  resources :cities
  resources :regions
  resources :countries
  resources :jobs
  resources :ikigai_methodes
  get 'automatiser_demarche/index'
  get 'gemini_live/index'
  get 'quiz_interactif/index'
  get 'presentez_vous/index'
  get 'moi_vous_nous/index'
  get 'mot_cle/index'
  get 'hero_section/index'
  get 'portfolio/index'
  get 'nano_banana/index'
  get 'canvas_gemini/index'
  get 'booster_cv/index'
  get 'publier_contenu/index'
  get 'linkedin_resume/index'
  get 'liste_offres/index'
  get 'deep_research/index'
  get 'coach/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "coach#index"
end
