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

    @javascript
  Scenario: Visitor must fill out all required fields
    When I press "Submit"
    And I should see the following <error messages>
      | error messages                |
      | Your name field is required.  |
      | Your email field is required. |
      | Message field is required.    |

    @javascript
  Scenario: Visitor can submit the Contact Us form
    When I fill in "Your name" with "George"
    When I fill in "Your email" with "george@example.com"
    When I fill in "Message" with "Efficiently integrate client-centric testing procedures after sticky technologies. Phosfluorescently drive vertical technologies before corporate data. Appropriately engineer market positioning human."
    When I press "Submit"
    And I should see the text "Thank you, your submission has been received."
    And I should see the link "Go back to the form"
