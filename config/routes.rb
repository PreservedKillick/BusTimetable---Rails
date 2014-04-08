BusTimetable::Application.routes.draw do
  resources :bus_lines
  resources :stations
  resources :stops

end
