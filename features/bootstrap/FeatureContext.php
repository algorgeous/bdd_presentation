<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Drupal\Driver\DrushDriver;

use Behat\Behat\Context\Step\Given;
use Behat\Behat\Context\Step\When;
use Behat\Behat\Context\Step\Then;

//
// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
//   require_once 'PHPUnit/Framework/Assert/Functions.php';
//

/**
 * Features context.
 */
class FeatureContext extends Drupal\DrupalExtension\Context\DrupalContext
{
    /**
     * Initializes context.
     * Every scenario gets it's own context object.
     *
     * @param array $parameters context parameters (set them up through behat.yml)
     */
    public function __construct(array $parameters)
    {
        // Initialize your context here
    }

  /**
   * @Given /^an article with a Title of "([^"]*)" and a Post Date of "([^"]*)"$/
   */
  public function anArticleWithATitleOfAndAPostDateOf($title, $date) {
      return array(
	new Given('I go to "node/add/article"'),
	new Given("I fill in \"Title\" with \"$title\""),
	new When("I fill in \"$date\" for \"edit-field-post-date-und-0-value-date\""),
	new When('I fill in "Body" with "Professionally disseminate bleeding-edge portals whereas ethical benefits."'),
	new When('I press "Save"'),
      );
  }

  /**
   * @Given /^a user "([^"]*)" with password "([^"]*)"$/
   */
  public function aUserWithPassword($arg1, $arg2) {
    throw new PendingException();
  }

  /**
   * @Given /^I login as "([^"]*)" with password "([^"]*)"$/
   */
  public function iLoginAsWithPassword($arg1, $arg2) {
    throw new PendingException();
  }
}
