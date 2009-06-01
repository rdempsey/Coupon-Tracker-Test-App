Given /^no coupons$/ do
end

Given /^the coupons?$/ do |table|
  @coupons = table.hashes
  table.hashes.each do |coupon|
    Coupon.create! coupon
  end
end

When /^I enter the coupon$/ do |coupons|
  @coupons = coupons.hashes
  coupon = @coupons.first
  When "I fill in \"Where\" with \"#{coupon[:where]}\""
  When "I fill in \"Amount\" with \"#{coupon[:amount]}\""
  When "I fill in \"Description\" with \"#{coupon[:description]}\""
end

Then /^I should see the coupons?$/ do
  @coupons.each do |coupon|
    Then "I should see \"#{coupon[:where]}\""
    And "I should see \"#{coupon[:amount]}\""
    And "I should see \"#{coupon[:where]}\""
  end
end

