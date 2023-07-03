class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def new_category_page
  end
end
