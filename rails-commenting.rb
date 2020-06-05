# ASSESSMENT 6: Rails Commenting Challenge
# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# app/controller/blog_posts_controller.rb

# 1) the behavior of how blog posts work is created within the controller.
class BlogPostsController < ApplicationController
  def index
    # 2) index is a command that will display all blogposts that have been created so far.
    @posts = BlogPost.all
  end

  def show
    # 3)show will search for a specific blogpost that has a specific parameter
    @post = BlogPost.find(params[:id])
  end

  # 4) rails by default renders new.html.erb when creating a new blogpost
  def new
  end

  def create
    # 5) creates a new blogpost and through blog_post_params makes sure it has every necessary field.
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to @post
    else
      render action: :new
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.delete
      redirect_to blog_posts_path
    else
      # 6)if destroy failed it will link to the page with the post that was intended to be deleted.
      redirect_to blog_post_path(@post)
    end
  end

  # 7) everything under private is a list of strong parameters
  private
  def blog_post_params
    # 8)every blog post that is created must have a title and content field filled in.
    params.require(:blog_post).permit(:title, :content)
  end

end


# app/models/blog_post.rb

# 9) the associations for blogpost are stored within this file.
class BlogPost < ApplicationRecord
  # 10) The blogpost is capable of having many comments attached to it.
  has_many :comments
end
