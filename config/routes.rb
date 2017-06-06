Rails.application.routes.draw do
  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/my_likes", :controller => "likes", :action => "my_likes"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Organizer resource:
  # CREATE
  get "/organizers/new", :controller => "organizers", :action => "new"
  post "/create_organizer", :controller => "organizers", :action => "create"

  # READ
  get "/organizers", :controller => "organizers", :action => "index"
  get "/organizers/:id", :controller => "organizers", :action => "show"

  # UPDATE
  get "/organizers/:id/edit", :controller => "organizers", :action => "edit"
  post "/update_organizer/:id", :controller => "organizers", :action => "update"

  # DELETE
  get "/delete_organizer/:id", :controller => "organizers", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Post resource:
  # CREATE
  get "/posts/new", :controller => "posts", :action => "new"
  post "/create_post", :controller => "posts", :action => "create"

  # READ
  get "/posts", :controller => "posts", :action => "index"
  get "/posts/my_posts", :controller => "posts", :action => "my_posts"
  get "/posts/:id", :controller => "posts", :action => "show"



  # UPDATE
  get "/posts/:id/edit", :controller => "posts", :action => "edit"
  post "/update_post/:id", :controller => "posts", :action => "update"

  # DELETE
  get "/delete_post/:id", :controller => "posts", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # CREATE
  #get "/events/new", :controller => "events", :action => "new"
  #post "/create_event", :controller => "events", :action => "create"

  # READ
  #get "/events", :controller => "events", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  #get "/events/:id/edit", :controller => "events", :action => "edit"
  #post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  #get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------



  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  root "events#index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
