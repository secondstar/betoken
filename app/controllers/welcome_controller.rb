class WelcomeController < ApplicationController
  def index
    @posts = Post.most_recent(3)
    @undertakings = Project.most_recent(3)
  end
end
