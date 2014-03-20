To get started, first download composer.

  curl -sS https://getcomposer.org/installer | php -d detect_unicode=Off

Then run

  php composer.phar install

From there, you can copy the behat.local.yml.dist file to behat.local.yml. Edit
the behat.local.yml file and update the base_url to point to the local
hostname you want to test, and set the drupal_root to the path to your Drupal
installation.

You will find behat in the bin/ directory. You can run the complete set of
tests by running
  
  bin/behat

You can test a specific feature by running
  
  bin/behat features/some_feature.feature

Run bin/behat --help to see all the options. Running bin/behat -dl will give
you a listing of all of the current step definitions.

Refer to http://www.dspeak.com/drupalextension/ for more information on using
Behat with Drupal.
