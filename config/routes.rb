Rails.application.routes.draw do
<<<<<<< HEAD
  resources :authors, only: [:show, :new, :create, :edit, :update]
  resources :posts, only: [:show, :new, :create, :edit, :update]

=======
  resource :authors
  resource :posts
>>>>>>> 8d2bcacd0d6d450873ec43b9b5074d289fa0efb3
end
