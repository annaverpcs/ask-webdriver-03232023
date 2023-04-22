#Search engine exercise
#ASK0323-180
#Autor: Natalia Beliaeva
Feature: Search engine scenarious
  #scenario for http://gibiru.com
  Scenario: gibiru.com
  Given I open url "http://gibiru.com"
  Then I should see page title contains "Gibiru – Protecting your privacy since 2009"
  Then I click on element with xpath "//input[@id='q']"
  Then I type "How to take a breake" into element with xpath "//input[@id='q']"
  And I click on element using JavaScript with xpath "//button[@id='button-addon2']"
  Then I wait for element with xpath "//div[@id='___gcse_0']" to be present
  And I should see page title contains "Results"
# scenario for https://duckduckgo.com
  Scenario: duckduckgo.com
  Given I open url "https://duckduckgo.com"
  Then I should see page title contains "DuckDuckGo — Privacy, simplified."
  Then I click on element with xpath "//input[@id='searchbox_input']"
  Then I type "hello, world" into element with xpath "//input[@id='searchbox_input']"
  Then I click on element using JavaScript with xpath "//button[@type='submit']"
  Then I should see page title contains "DuckDuckGo"
  And I wait for element with xpath "//div[@class='cw']" to be present
  And element with xpath "//div[@class='cw']" should contain text "Hello"
# scenario for https://swisscows.com
  Scenario: swisscows.com
  Given I open url "https://swisscows.com"
  And I should see page title as "Your private and anonymous search engine Swisscows"
  Then element with xpath "//input[@type='search']" should be present
  Then I type "Apple" into element with xpath "//input[@type='search']"
  Then I click on element using JavaScript with xpath "//button[@type='submit']"
  Then I wait for element with xpath "//section[@class='page-results']" to be present
  And I should see page title contains "Web search"
  Then I wait for 3 sec
  Then element with xpath "//div[@class='web-results']" should be present
  And element with xpath "//div[@class='web-results']" should contain text "Apple"

# scenario for https://www.searchencrypt.com
  Scenario: searchencrypt.com
  Given I open url "https://www.searchencrypt.com"
  And I should see page title contains "Search Encrypt | Home"
  Then I type "apple" into element with xpath "//input[@type='text']"
  Then I click on element using JavaScript with xpath "//button[@type='submit']"
  Then I wait for element with xpath "//section[@class='serp__body site-wrapper container-wrapper']" to be present
  And I should see page title contains "Search Encrypt | Search Web..."
  And I wait for 3 sec
  And element with xpath "//section[@class='serp__results container']" should contain text "Apple"
# scenario for https://www.startpage.com
  Scenario: startpage.com
  Given I open url "https://www.startpage.com"
  Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
  Then element with xpath "//input[@id='q']" should be present
  When I type "cat" into element with xpath "//input[@id='q']"
  Then I click on element with xpath "//button[@id='search-btn'][1]"
  And I wait for 5 sec
  And I should see page title contains "Search Results"
  Then element with xpath "//div[@class='layout-web__mainline']" should be present
  Then element with xpath "//div[@class='layout-web__mainline']" should contain text "Cat"

# scenario for https://www.yandex.com
  Scenario: yandex.com
  Given I open url "https://www.yandex.com/?"
  And I wait for 3 sec
  Then I click on element using JavaScript with xpath "//button[@data-id='button-mandatory']"
  And I wait for 3 sec
  Then I should see page title as "Yandex"
  When I type "Apple" into element with xpath "//input[@id='text']"
  Then I click on element using JavaScript with xpath "//button[@type='submit']"
  #robot
  And I should see page title contains "results found"
  Then element with xpath "//div[@class='main__center']" should contain text "Apple"
# scenario for https://www.ecosia.org
  Scenario: ecosig.org
  Given I open url "https://www.ecosia.org"
  Then I should see page title as "Ecosia - the search engine that plants trees"
  Then element with xpath "//input[@name='q']" should be present
  Then I type "Hola" into element with xpath "//input[@name='q']"
  Then I click on element using JavaScript with xpath "//button[@type='submit']"
  Then I should see page title contains "Hola - Ecosia - Web"
  #And I click on element using JavaScript with xpath " //span[contains(text(),'Reject non-essential')]"
  And element with xpath "//main[@id='main']" should contain text "Hola"
# scenario for https://www.wiki.com/
  Scenario: wiki.com
  Given I open url "https://www.wiki.com/"
  Then I should see page title as "Wiki.com"
  Then I type "Apple" into element with xpath "//input[@name='q']"
  And I click on element using JavaScript with xpath "//input[@type='submit']"
  And I wait for 3 sec
  Then I click on element using JavaScript with xpath "//button[@id='proceed-button']"
  Then I should see page title contains "Wiki"
  And I wait for 3 sec
  Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
  And element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en'][1]" should contain text "Apple"

# scenario for https://www.givewater.com/
  Scenario: givewater.com
  Given I open url "https://www.givewater.com/"
  Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
  Then I click on element using JavaScript with xpath "//button[@class='pum-close popmake-close']"
  When I type "Apple" into element with xpath "//input[@type='search']"
  Then I click on element using JavaScript with xpath "//button[@type='submit']"
  And I wait for element with xpath "//div[@class='mainline-results mainline-results__web']" to be present
  Then I should see page title contains "GiveWater Web Search"
  And element with xpath "//div[@class='mainline-results mainline-results__web'][1]" should contain text "Apple"
# scenario for https://ekoru.org/
  Scenario: ekoru.org
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    When I type "Apple" into element with xpath "//input[@id='fld_q']"
    Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
    Then I wait for 4 sec
    And I should see page title contains "Ekoru - every search cleans our oceans"
    Then I wait for element with xpath "//div[@class='serp-wrapper']" to be present
    And element with xpath "//div[@id='div_results']" should contain text "Apple"