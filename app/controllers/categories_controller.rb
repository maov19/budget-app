class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @group = Group.all
  end

  def new_category_page; end
end
