class CategoriesController < ApplicationController
  def show
    @category = Category.find_by_name(params[:name])
    @articles = @category.articles
  end

  def index
    @categories = Category.all
  end

end
