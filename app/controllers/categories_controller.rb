class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @pagy, @categories = pagy(current_user.categories)
  end
end
