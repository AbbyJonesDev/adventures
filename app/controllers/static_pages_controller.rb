class StaticPagesController < ApplicationController
  def home
    @blogs = Blog.most_recent
    @resources = Resource.most_recent
  end

  def about
  end

  def resume
  end
end
