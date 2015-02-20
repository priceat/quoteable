class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to root_path(:hi => "Hello")
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end
end
