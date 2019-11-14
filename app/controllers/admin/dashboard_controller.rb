class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['username'], password: ENV['password']

  def show
    @products = Product.all.length
    @category = Category.all.length
  end

end
