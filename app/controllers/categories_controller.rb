class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.all
  end

  def new_category_page
    @category = Group.new
  end

  def create
    @category = Group.new(category_params)
    if @category.save
      redirect_to home_path, notice: 'Category created!'
    else
      render :new_category_page
    end
  end

  # def new_category_page; end

  private

  def category_params
    params.permit(:name, :icon)
  end
end
