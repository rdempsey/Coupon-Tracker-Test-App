require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Coupon, 'when saving amount' do
  it "supports decimal amounts" do
    amount = "5.15"
    Coupon.create! :amount => amount
    coupon = Coupon.first
    coupon.amount.to_s.should == "5.15"
  end
end
