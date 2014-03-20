Feature: Contact form
  As a site visitor
  I want to be able to fill out a contact form
  So that I can provide feedback or ask questions of the webmaster

  Scenario: Contact us link should be present
    Given I am on the homepage
    Then I should see the link "Contact Us"
