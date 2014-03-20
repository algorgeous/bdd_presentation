Feature: Articles
  As a Site Admin
  I want to be able to create and edit Articles
  So that visitors can view published Articles on the homepage.

  Background:
    Given I am logged in as a user with the "Site Admin" role

    @api
  Scenario: New articles should be displayed on the home page
    Given an article with a Title of "Behat for fun and profit" and a Post Date of "03/21/2014"
    And I am on the homepage
    Then I should see the link "Behat for fun and profit"
    Then I should see the text "March 21, 2014"
