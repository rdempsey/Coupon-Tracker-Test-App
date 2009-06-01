Feature: Viewing coupons on the homepage
  In order see how much I have saved by using coupons
  As a frugal person
  I want to see the list of used coupons on the homepage
  
  @focus
  Scenario: No coupons
    Given no coupons
    When I go to the homepage
    Then I should see "You need to start using coupons"
  
  Scenario: One coupon
    Given a coupon
    | where | amount| description   |
    | panera| 5.00  | very good food|
    When I go to the homepage
    Then I should see "1 coupon"
    And I should see "Panera"
    And I should see "5.00"
    And I should see "very good food"
  
  
  
  