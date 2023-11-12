Rails.application.routes.draw do
  get("/", {:controller=> "users", :action => "index"})
  get("/users", {:controller=> "users", :action => "index"})
  get("/users/:useridpath", {:controller=> "users", :action => "show"})
  post("/update_user/:useridpath", {:controller=> "users", :action => "update"}) 
  post("/add_user", {:controller => "users", :action => "add_user"})

  get("/photos", {:controller=> "photos", :action => "index"})
  get("/photos/:photoidpath", {:controller=> "photos", :action => "show"})
  get("/delete_photo/:destroypath", {:controller=> "photos", :action => "destroy"})
  post("/insert_photo_record", {:controller => "photos", :action => "add_photo"})
  post("/update_photo/:photoidpath", {:controller => "photos", :action => "edit_photo"})

  post("/add_comment", {:controller => "comments", :action => "add_comment"})

end
