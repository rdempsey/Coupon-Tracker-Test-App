Feature: Viewing coupons on the homepage
  In order see how much I have saved by using coupons
  As a frugal person
  I want to see the list of used coupons on the homepage
  
  Scenario: No coupons
    Given no coupons
    When I go to the homepage
    Then I should see "You need to start using coupons"
  
  Scenario Outline: One coupon
    Given the coupon
    | where | amount| description   |
    | <where>| <amount>  | <description>|
    When I go to the homepage
    Then I should see "1 coupon"
    And I should see the coupon
  Examples:
    | where | amount| description   |
    | Panera| 5.00  | very good food|
    | McDonald's | 1.00 | shitty food bad business practices |
    
  Scenario: Two coupons
    Given the coupons
    | where | amount| description   |
    | Panera| 5.00  | very good food|
    | McDonald's | 1.00 | shitty food bad business practices |
    When I go to the homepage
    Then I should see "2 coupons"
    And I should see the coupons
  