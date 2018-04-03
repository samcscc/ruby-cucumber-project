#Feature: Validate the functionality for Auto Repair Financial
#
#  Scenario: Validate that the user lands on Welcome page upon Login.
#    Given I am on the auto repair financial page
#    When I enter login details
#    Then I should be landing on the see the results


#Define acceptance tests for different user roles.
Feature: User Roles

  Scenario: SuperUser Privileges
    Given I am logged in as superuser
    Then I should see the superuser homepage

  Scenario: Dealer Privileges
    Given I am logged in as dealer
    Then I should see the dealer homepage

  Scenario: Lender Privileges
    Given I am logged in as lender
    Then I should see the lender homepage

# Published by Hima- Nationwide Insurance - Tester

