#Search engine exercise
#ASK -number related to my jira ticket search engine
#Autor: Natalia Beliaeva

@regression
Feature: Search engine scenarios
  Scenario: Search engine for Google
    Given I open url "https://google.com/"
    Then I should see page title as "Google"
    Then I click on element with xpath "//textarea[@id='APjFqb']"
    Then I type "cucumber" into element with xpath "//textarea[@id='APjFqb']"
    Then I click on element with xpath "//input[@type='submit']"
    Then I wait for 3 sec
    Then I wait for element with xpath "//div[@id='center_col']" to be present
    And I should see page title contains "- Google Search"
    Then element with xpath "//div[@id='center_col']" should contain text "Cucumber"


