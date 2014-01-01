class CommunityController < ApplicationController
  def index
    @posts                = Post.most_recent(3)
    @open_source_projects = Project.open_source(4)
  end
end
