# encoding: utf-8

Feature: Test of signup in automationpractice
  As a non-registered user
  I want to signup

Background:
  Given I acess the "signupPage"
  Then I should see the page loaded

@1 @success
 Scenario: Create an account - only required fields 
  When I insert "valid" email and submit to create
  Then I insert data form
  And I submit form
  Then show user authenticated in home page

 @2 @errorMessage
 Scenario: Create an account - email already been registered 
  When I insert "used" email and submit to create
  Then show message error: "email-already"


