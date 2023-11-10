Rails.application.routes.draw do

  get("/users", {:controller=> "users", :action => "index"})
  get("/users/:useridpath", {:controller=> "users", :action => "show"})

end
