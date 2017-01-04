class WelcomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at desc").limit(1)
    @recents = Post.all.order("created_at desc").offset(1)
    @popular = Post.all.order("rating desc").limit(4)
  end
end
