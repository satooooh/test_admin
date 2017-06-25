class ProductsController < ApplicationController

  before_action :move_to_inde

  def index
    @product = Product.new
  end

  def create
    product = Product.create(name: product_params[:name], user_id: current_user.id)
    # PostMailer.post_email(current_user, @product).deliver_now
  end

private
  def product_params
    params.permit(:name)
  end

  def move_to_index
    redirect_to "/" unless user_signed_in?
  end
end
