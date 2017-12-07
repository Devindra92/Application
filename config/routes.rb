Rails.application.routes.draw do
 namespace :api, defaults: {format: 'json'} do
		namespace :v1 do
			resources :records
		end
	end

  resources :records

  root 'records#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
