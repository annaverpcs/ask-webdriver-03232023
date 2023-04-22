#Test automation for Quote App
#https://skryabin.com/webdriver/html/sample.html
#Autor: Natalia Beliaeva
  @quote
  Feature: Quote Test Scenarious
    @quote1
    Scenario: Validate location
      #validation location address, responsive UI by resizing window. Responsive design test
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      #desctop mode
      When I resize window to 1920 and 1080
      Then element with xpath "//b[@id='location']" should be present
      Then element with xpath "//b[@id='location']" should contain text "Los Altos"
      #phone mode
      When I resize window to 378 and 667
      Then element with xpath "//b[@id='location']" should not be displayed
      And I wait for 3 sec
    @quote2
  Scenario: Verify Username field
    #verify that field is requered and more 2 characters
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      Then element with xpath "//input[@name='username']" should be displayed
      When I type "A" into element with xpath "//input[@name='username']"
      And I click on element using JavaScript with xpath "//button[@type='submit']"
      Then element with xpath "//label[@id='username-error']" should be displayed
      And element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters."
      Then I clear element with xpath "//input[@name='username']"
      And element with xpath "//label[@id='username-error']" should contain text "This field is required."
      When I type "TEST" into element with xpath "//input[@name='username']"
      Then element with xpath "//label[@id='username-error']" should not be displayed

      @quote3
      Scenario: Verify name field
        #Verify that name field properly displays the input from pop-up window
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
        Then I click on element with xpath "//input[@id='name']"
        And element with xpath "//input[@id='firstName']" should be displayed
        Then I type "First" into element with xpath "//input[@id='firstName']"
        Then element with xpath "//input[@id='middleName']" should be displayed
        Then I type "Middle" into element with xpath "//input[@id='middleName']"
        Then element with xpath "//input[@id='lastName']" should be displayed
        Then I type "Last" into element with xpath " //input[@id='lastName']"
        And I click on element with xpath "//span[contains(text(),'Save')]"
        Then element with xpath "//input[@id='name']" should be displayed
        And element with xpath "//input[@id='name']" should have attribute "value" as "First Middle Last"

    @quote4
    Scenario Outline: DataDriven
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      Then I click on element with xpath "//input[@id='name']"
      And element with xpath "//input[@id='firstName']" should be displayed
      Then I type "<firstName>" into element with xpath "//input[@id='firstName']"
      Then element with xpath "//input[@id='middleName']" should be displayed
      Then I type "<middleName>" into element with xpath "//input[@id='middleName']"
      Then element with xpath "//input[@id='lastName']" should be displayed
      Then I type "<lastName>" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should be displayed
      And element with xpath "//input[@id='name']" should have attribute "value" as "<attributeValue>"
      Examples:
        | firstName  | middleName  |  lastName |   attributeValue    |
        | First |  Middle |  Last  |   First Middle Last |
        | First |  Middle |     |   First Middle   |
        | 1 |  2 |  3  |   1 2 3 |
        | A |  B |  C  |   A B C |
        | A |  B |  C  |   ABC |
        | A |    |  C  |   A   C |
        | A |  B |     |   A B   |




