class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    @new_coupon = Coupon.new
  end
end
