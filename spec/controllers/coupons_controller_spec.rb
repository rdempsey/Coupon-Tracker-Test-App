require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe CouponsController, "GET index" do
  it "responds successfully" do
    get :index
    response.should be_success
  end

end
