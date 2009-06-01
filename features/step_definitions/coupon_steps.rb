Given /^no coupons$/ do
end

Given /^a coupon$/ do |table|
  Coupon.create! table.hashes[0]
end
