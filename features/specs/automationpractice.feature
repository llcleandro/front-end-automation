# encoding: utf-8

Feature: Test of search in homePage without login
  As a non-registered user
  I want to search for an item

Background:
  Given I acess the "homePage"
  Then I should see the page loaded

@1 @success
 Scenario: Search without fill in
  When I click in search button
  Then I see the message "Please enter a search keyword"

@2 @success
 Scenario: Search without result
  When I insert "less" in search field
  And I click in search button
  Then I see the message "No results were found for your search""less"

@3 @success
 Scenario: Search for specific item
  When I insert "Faded Short Sleeve T-shirts" in search field
  And I click in search button
  Then I see in the list of results the item "Faded Short Sleeve T-shirts"

@4 @success
Scenario: Search for specific collor
 When I insert "yellow" in search field
 And I click in search button
 Then I see in the list of results items with color "yellow" available

@5 @success
Scenario: Search for term within of item description
 When I insert "Long printed" in search field
 And I click in search button
 Then I click in item of result
 Then I see in the description of item the term "Long printed"

@6 @success
Scenario: Search using suggestion in search field "did you mean"
 When I insert "blouse" in search field
 And I click in suggestion of search field
 Then I see the productPage of clicked item

@7 @error
 Scenario: Validation for forced error
  When I insert "less" in search field
  And I click in search button
  Then I see in the list of results the item "Faded Short Sleeve T-shirts"
