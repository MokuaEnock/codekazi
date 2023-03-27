class CategoriesController < ApplicationController
  def create
  end

  def show
  end

  def destroy
  end

  def update
  end

  private

  def cat_params
    params.permit(:name, :description)
  end
end
