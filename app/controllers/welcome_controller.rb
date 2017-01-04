class WelcomeController < ApplicationController
  def index
    @posts = Post.all.order("created_at desc").limit(1)
    @recents = Post.all.order("created_at desc").limit(10).offset(1)
    @popular = Post.all.order("rating desc").limit(8)
  end
end
