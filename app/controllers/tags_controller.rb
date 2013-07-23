class TagsController < ApplicationController
  def show
    @tag = Tag.find_by_name(params[:name])
    @articles = @tag.articles
  end

  def index
    @tags = Tag.all
  end
end
