Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "beans#index"
  # Routes for the Company resource:

  # CREATE
  get("/companies/new", { :controller => "companies", :action => "new_form" })
  post("/create_company", { :controller => "companies", :action => "create_row" })

  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  get("/companies/:id_to_display", { :controller => "companies", :action => "show" })

  # UPDATE
  get("/companies/:prefill_with_id/edit", { :controller => "companies", :action => "edit_form" })
  post("/update_company/:id_to_modify", { :controller => "companies", :action => "update_row" })

  # DELETE
  get("/delete_company/:id_to_remove", { :controller => "companies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Blogpost resource:

  # CREATE
  get("/blogposts/new", { :controller => "blogposts", :action => "new_form" })
  post("/create_blogpost", { :controller => "blogposts", :action => "create_row" })
  post("/create_blogpost_from_user", { :controller => "blogposts", :action => "create_row_from_user" })

  # READ
  get("/blogposts", { :controller => "blogposts", :action => "index" })
  get("/blogposts/:id_to_display", { :controller => "blogposts", :action => "show" })

  # UPDATE
  get("/blogposts/:prefill_with_id/edit", { :controller => "blogposts", :action => "edit_form" })
  post("/update_blogpost/:id_to_modify", { :controller => "blogposts", :action => "update_row" })

  # DELETE
  get("/delete_blogpost/:id_to_remove", { :controller => "blogposts", :action => "destroy_row" })
  get("/delete_blogpost_from_user/:id_to_remove", { :controller => "blogposts", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })
  post("/create_comment_from_blogpost", { :controller => "comments", :action => "create_row_from_blogpost" })
  post("/create_comment_from_user", { :controller => "comments", :action => "create_row_from_user" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })
  get("/delete_comment_from_blogpost/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_blogpost" })
  get("/delete_comment_from_user/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the Bookmark resource:

  # CREATE
  get("/bookmarks/new", { :controller => "bookmarks", :action => "new_form" })
  post("/create_bookmark", { :controller => "bookmarks", :action => "create_row" })
  post("/create_bookmark_from_blogpost", { :controller => "bookmarks", :action => "create_row_from_blogpost" })
  post("/create_bookmark_from_user", { :controller => "bookmarks", :action => "create_row_from_user" })

  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  get("/bookmarks/:id_to_display", { :controller => "bookmarks", :action => "show" })

  # UPDATE
  get("/bookmarks/:prefill_with_id/edit", { :controller => "bookmarks", :action => "edit_form" })
  post("/update_bookmark/:id_to_modify", { :controller => "bookmarks", :action => "update_row" })

  # DELETE
  get("/delete_bookmark/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row" })
  get("/delete_bookmark_from_blogpost/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row_from_blogpost" })
  get("/delete_bookmark_from_user/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the User resource:

  # CREATE
  get("/users/new", { :controller => "users", :action => "new_form" })
  post("/create_user", { :controller => "users", :action => "create_row" })

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  # UPDATE
  get("/users/:prefill_with_id/edit", { :controller => "users", :action => "edit_form" })
  post("/update_user/:id_to_modify", { :controller => "users", :action => "update_row" })

  # DELETE
  get("/delete_user/:id_to_remove", { :controller => "users", :action => "destroy_row" })

  #------------------------------

  # Routes for the Tool match resource:

  # CREATE
  get("/tool_matches/new", { :controller => "tool_matches", :action => "new_form" })
  post("/create_tool_match", { :controller => "tool_matches", :action => "create_row" })
  post("/create_tool_match_from_tool", { :controller => "tool_matches", :action => "create_row_from_tool" })
  post("/create_tool_match_from_bean", { :controller => "tool_matches", :action => "create_row_from_bean" })

  # READ
  get("/tool_matches", { :controller => "tool_matches", :action => "index" })
  get("/tool_matches/:id_to_display", { :controller => "tool_matches", :action => "show" })

  # UPDATE
  get("/tool_matches/:prefill_with_id/edit", { :controller => "tool_matches", :action => "edit_form" })
  post("/update_tool_match/:id_to_modify", { :controller => "tool_matches", :action => "update_row" })

  # DELETE
  get("/delete_tool_match/:id_to_remove", { :controller => "tool_matches", :action => "destroy_row" })
  get("/delete_tool_match_from_tools/:id_to_remove", { :controller => "tool_matches", :action => "destroy_row_from_tools" })
  get("/delete_tool_match_from_beans/:id_to_remove", { :controller => "tool_matches", :action => "destroy_row_from_beans" })

  #------------------------------

  # Routes for the Tool resource:

  # CREATE
  get("/tools/new", { :controller => "tools", :action => "new_form" })
  post("/create_tool", { :controller => "tools", :action => "create_row" })

  # READ
  get("/tools", { :controller => "tools", :action => "index" })
  get("/tools/:id_to_display", { :controller => "tools", :action => "show" })

  # UPDATE
  get("/tools/:prefill_with_id/edit", { :controller => "tools", :action => "edit_form" })
  post("/update_tool/:id_to_modify", { :controller => "tools", :action => "update_row" })

  # DELETE
  get("/delete_tool/:id_to_remove", { :controller => "tools", :action => "destroy_row" })

  #------------------------------

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
  post("/create_bean_from_machine", { :controller => "beans", :action => "create_row_from_machine" })

  # READ
  get("/beans", { :controller => "beans", :action => "index" })
  get("/beans/:id_to_display", { :controller => "beans", :action => "show" })

  # UPDATE
  get("/beans/:prefill_with_id/edit", { :controller => "beans", :action => "edit_form" })
  post("/update_bean/:id_to_modify", { :controller => "beans", :action => "update_row" })

  # DELETE
  get("/delete_bean/:id_to_remove", { :controller => "beans", :action => "destroy_row" })
  get("/delete_bean_from_recommended_machine/:id_to_remove", { :controller => "beans", :action => "destroy_row_from_recommended_machine" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
