Given /^no coupons$/ do
end

Given /^the coupons?$/ do |table|
  @coupons = table.hashes
  table.hashes.each do |coupon|
    Coupon.create! coupon
  end
end

Then /^I should see the coupons$/ do
  @coupons.each do |coupon|
    Then "I should see \"#{coupon[:where]}\""
    And "I should see \"#{coupon[:amount]}\""
    And "I should see \"#{coupon[:where]}\""
  end
end
