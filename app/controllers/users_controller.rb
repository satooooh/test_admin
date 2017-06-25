class UsersController < ApplicationController
  def show
    show = current_user.products.page(params[:page]).per(5).order("created_at DESC")
  end
end
