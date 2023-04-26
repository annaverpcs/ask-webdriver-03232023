#Search Engine exercise
#ASK0323-7
#Author: Anna Verkovskaya

@predefined @regression
Feature: Search Engine scenarios
  @predefined1

  Scenario: Search Engine for Google
    Given I open url "https://www.google.com/"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
  # Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    And I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
    Scenario: Search Yandex
      Given I open url "https://yandex.com/?"


  @predefined3
    Scenario: Search https://www.wiki.com/
      Given I open url "https://www.wiki.com/"
      Then I should see page title contains "Wiki.com"
      Then element with xpath "//input[@name='q']" should be present
      When I type "Cucumber" into element with xpath "//input[@name='q']"
      And I click on element with xpath "//input[@name='btnG']"
      Then I wait for 1 sec
      Then I should see page title contains "Form is not secure"
      Then I click on element with xpath "//button[@id='proceed-button']"
      Then I wait for 1 sec
      Then I should see page title contains "Wiki.com"
      Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
      #And element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en'][1]" should contain text "Cucumber"
     Then element with xpath "//*[contains(text(),'Cucumber')]" should contain text "Cucumber"
      Then I wait for 5 sec









