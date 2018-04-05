Rails.application.routes.draw do
  root "top#index"
  get "about" => "top#about", as: "about"

  1.upto(19) do |n|
    get "lesson/step#{n}(/:name)" => "lesson#step#{n}"
  end

  resources :members do
    collection { get "search" }
  end

  resource :session
end
