class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    @new_coupon = Coupon.new
  end
  
  def create
    Coupon.create!(params[:coupon])
    redirect_to coupons_path
  end
end
