Rails.application.routes.draw do

  get("/users", {:controller=> "users", :action => "index"})
  get("/users/:useridpath", {:controller=> "users", :action => "show"})

  get("/photos", {:controller=> "photos", :action => "index"})
  get("/photos/:photoidpath", {:controller=> "photos", :action => "show"})

end
