Feature: Creating coupons
  In order to keep track of the coupons I've used
  As a frugal shopper
  I want to be able to enter a coupon into the system
  
  Scenario: Entering a coupon
    Given I am on the homepage
    When I enter the coupon
    | where | amount | description |
    | Panera | 5.00 | free sandwich! |
    And I press "Create"
    Then I should see the coupon
  
