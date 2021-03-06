class BlogpostsController < ApplicationController
  def index
    @q = Blogpost.ransack(params[:q])
    @blogposts = @q.result(:distinct => true).includes(:user, :bookmarks, :comments, :bookmarked_users).page(params[:page]).per(10)

    render("blogpost_templates/index.html.erb")
  end

  def show
    @comment = Comment.new
    @bookmark = Bookmark.new
    @blogpost = Blogpost.find(params.fetch("id_to_display"))

    render("blogpost_templates/show.html.erb")
  end

  def new_form
    @blogpost = Blogpost.new

    render("blogpost_templates/new_form.html.erb")
  end

  def create_row
    @blogpost = Blogpost.new

    @blogpost.caption = params.fetch("caption")
    @blogpost.image = params.fetch("image") if params.key?("image")
    @blogpost.user_id = params.fetch("user_id")

    if @blogpost.valid?
      @blogpost.save

      redirect_back(:fallback_location => "/blogposts", :notice => "Blogpost created successfully.")
    else
      render("blogpost_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_user
    @blogpost = Blogpost.new

    @blogpost.caption = params.fetch("caption")
    @blogpost.image = params.fetch("image") if params.key?("image")
    @blogpost.user_id = params.fetch("user_id")

    if @blogpost.valid?
      @blogpost.save

      redirect_to("/users/#{@blogpost.user_id}", notice: "Blogpost created successfully.")
    else
      render("blogpost_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @blogpost = Blogpost.find(params.fetch("prefill_with_id"))

    render("blogpost_templates/edit_form.html.erb")
  end

  def update_row
    @blogpost = Blogpost.find(params.fetch("id_to_modify"))

    @blogpost.caption = params.fetch("caption")
    @blogpost.image = params.fetch("image") if params.key?("image")
    @blogpost.user_id = params.fetch("user_id")

    if @blogpost.valid?
      @blogpost.save

      redirect_to("/blogposts/#{@blogpost.id}", :notice => "Blogpost updated successfully.")
    else
      render("blogpost_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @blogpost = Blogpost.find(params.fetch("id_to_remove"))

    @blogpost.destroy

    redirect_to("/users/#{@blogpost.user_id}", notice: "Blogpost deleted successfully.")
  end

  def destroy_row
    @blogpost = Blogpost.find(params.fetch("id_to_remove"))

    @blogpost.destroy

    redirect_to("/blogposts", :notice => "Blogpost deleted successfully.")
  end
end
