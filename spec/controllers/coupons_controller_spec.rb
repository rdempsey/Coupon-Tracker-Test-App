require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CouponsController, "GET index" do
  it "responds successfully" do
    get :index
    response.should be_success
  end

  it "assigns the list of coupons to @coupons" do
    coupons = mock('coupon')
    Coupon.stub!(:all).and_return coupons
    get :index
    assigns[:coupons].should be(coupons)
  end
end
