class ArticlesController < ApplicationController
  def show
    title = params[:title].gsub(/-/, " ").downcase
    @article = Article.find_by_title(title)
  end
end



