#@site-prism-new
#Feature:
#This code checks the interface to the site-prism gem with capybara

#Scenario: Load the first page with site-prism
#	Given I navigate to the home page
#	Then The home page displays

@adopt-puppy
Feature: I want to adopt a puppy from this site

Background:
    Given I am on the puppy adoption site

Scenario: Process of adopting a puppy
    When I click the view details button for "Brook"
    And I click the adopt me button
    And I click the complete the adoption button
    And I enter "Cheezy" in the name field
    And I enter "123 Main Street" in the address field
    And I enter "cheezy@example.com" in the email field
    And I select "Credit card" from the pay type dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"
