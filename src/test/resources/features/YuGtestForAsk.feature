#ASK test scenarios

@ASKtest
  Feature: ASK test scenarios
    
    @asktest1
    Scenario: ASK scenario 1
      Given I open url "http://ask-int.portnov.com/#/login"
      Then I should see page title contains "Assessment Control"
      And I type "denaturnbow@gmailvn.net" into element with xpath "//input[@formcontrolname='email']"
      And I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
      And I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
      Then I wait for element with xpath "//p[contains(text(), 'TEACHER')]" to be present
      Then element with xpath "//p[contains(text(), 'TEACHER')]" should be present
      Then I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
      Then I wait for element with xpath "//h4[contains(text(), 'List of Quizzes')]" to be present
      Then I wait for 2 sec
      And I click on element with xpath "//span[contains(text(), 'Create New Quiz')]"
      And I wait for 1 sec
      Then I type "01 Yu G Quiz new" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      And I wait for 1 sec
      And I click on element with xpath "//mat-radio-button[2]"
      And I wait for 1 sec
      Then I type "Single question name for quiz" into element with xpath "//textarea[@formcontrolname='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder='Option 2*']"
      Then I click on element with xpath "(//div[@class='mat-radio-inner-circle'])[4]"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      And I wait for 3 sec
      Then element with xpath "//div[@class='quizzes']" should contain text "01 Yu G Quiz new"


      

      