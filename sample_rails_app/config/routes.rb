ActionController::Routing::Routes.draw do |map|
  map.resources :people,
               :collection => {:active => :get,
                               :inactive => :get}
  
  map.resources :people do |person|
    person.resources :dogs,
               :collection => {:living => :get,
                               :deceased => :get}
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
