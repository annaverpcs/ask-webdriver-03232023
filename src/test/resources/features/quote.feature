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