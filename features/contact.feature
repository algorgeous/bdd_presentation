Feature: Contact form
  As a site visitor
  I want to be able to fill out a contact form
  So that I can provide feedback or ask questions of the webmaster

  Background:
    Given I am on the homepage
    Then I should see the link "Contact Us"
    When I click "Contact Us"
    Then I should see the heading "Contact Us"

  Scenario: Contact us page should be present
    Then the url should match "/contact-us"
    And the response status code should not be 403

  Scenario: Contact us page should have necessary fields
    And I should see the text "Your name"
    And I should see the text "Your email"
    And I should see the text "Message"

  Scenario: Visitor must fill out all required fields
    When I press "Submit"
    And I should see the error message "Your name field is required."
    And I should see the error message "Your email field is required."
    And I should see the error message "Massage field is required."
