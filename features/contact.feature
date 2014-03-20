Feature: Contact form
  As a site visitor
  I want to be able to fill out a contact form
  So that I can provide feedback or ask questions of the webmaster

  Scenario: Contact us link should be present
    Given I am on the homepage
    Then I should see the link "Contact Us"

  Scenario: Contact us page should be present
    Given I am on the homepage
    Then I should see the link "Contact Us"
    And I click "Contact Us"
    Then I should see the heading "Contact Us"
    And the url should match "/contact-us"
    And the response status code should not be 403
