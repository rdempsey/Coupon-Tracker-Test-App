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
  
  it "assigns a new coupon to @new_coupon" do
    get :index
    assigns[:new_coupon].should be_new_record
  end
end

describe CouponsController, "POST create" do
  it "redirects to index" do
    Coupon.stub!(:create)
    post :create
    response.should redirect_to(coupons_path)
  end
  
  it "creates the coupon" do
    coupon_params = { "where" => "panera", "amount" => "6.00", "description" => "i keep using this example" }
    Coupon.should_receive(:create!).with(coupon_params)
    post :create, :coupon => coupon_params
  end
end
