Rails.application.routes.draw do

  get("/users", {:controller=> "users", :action => "index"})
  get("/users/:useridpath", {:controller=> "users", :action => "show"})
  post("/update_user/:useridpath", {:controller=> "users", :action => "update"}) 

  get("/photos", {:controller=> "photos", :action => "index"})
  get("/photos/:photoidpath", {:controller=> "photos", :action => "show"})
  get("/delete_photo/:destroypath", {:controller=> "photos", :action => "destroy"})

end
