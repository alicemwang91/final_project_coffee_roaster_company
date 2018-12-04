Rails.application.routes.draw do
  # Routes for the Machine resource:

  # CREATE
  get("/machines/new", { :controller => "machines", :action => "new_form" })
  post("/create_machine", { :controller => "machines", :action => "create_row" })

  # READ
  get("/machines", { :controller => "machines", :action => "index" })
  get("/machines/:id_to_display", { :controller => "machines", :action => "show" })

  # UPDATE
  get("/machines/:prefill_with_id/edit", { :controller => "machines", :action => "edit_form" })
  post("/update_machine/:id_to_modify", { :controller => "machines", :action => "update_row" })

  # DELETE
  get("/delete_machine/:id_to_remove", { :controller => "machines", :action => "destroy_row" })

  #------------------------------

  # Routes for the Bean resource:

  # CREATE
  get("/beans/new", { :controller => "beans", :action => "new_form" })
  post("/create_bean", { :controller => "beans", :action => "create_row" })

  # READ
  get("/beans", { :controller => "beans", :action => "index" })
  get("/beans/:id_to_display", { :controller => "beans", :action => "show" })

  # UPDATE
  get("/beans/:prefill_with_id/edit", { :controller => "beans", :action => "edit_form" })
  post("/update_bean/:id_to_modify", { :controller => "beans", :action => "update_row" })

  # DELETE
  get("/delete_bean/:id_to_remove", { :controller => "beans", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
