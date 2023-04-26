$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/predefined.feature");
formatter.feature({
  "name": "Search Engine scenarios",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@predefined"
    },
    {
      "name": "@regression"
    }
  ]
});
formatter.scenario({
  "name": "Search Engine for Google",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@predefined"
    },
    {
      "name": "@regression"
    },
    {
      "name": "@predefined1"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open url \"https://www.google.com/\"",
  "keyword": "Given "
});
formatter.match({
  "location": "PredefinedStepDefs.iOpenUrl(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I should see page title as \"Google\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iShouldSeePageTitleAs(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"Cucumber\" into element with xpath \"//textarea[@name\u003d\u0027q\u0027]\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iTypeIntoElementWithXpath(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on element using JavaScript with xpath \"(//input[@name\u003d\u0027btnK\u0027])[1]\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iClickOnElementUsingJavaScriptWithXpath(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for element with xpath \"//*[@id\u003d\u0027res\u0027]\" to be present",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForElementWithXpathToBePresent(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I should see page title contains \"- Google Search\"",
  "keyword": "And "
});
formatter.match({
  "location": "PredefinedStepDefs.iShouldSeePageTitleContains(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "element with xpath \"//*[@id\u003d\u0027res\u0027]\" should contain text \"Cucumber\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.elementWithXpathShouldContainText(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Search Yandex",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@predefined"
    },
    {
      "name": "@regression"
    },
    {
      "name": "@predefined2"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open url \"https://yandex.com/?\"",
  "keyword": "Given "
});
formatter.match({
  "location": "PredefinedStepDefs.iOpenUrl(String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
formatter.scenario({
  "name": "Search https://www.wiki.com/",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@predefined"
    },
    {
      "name": "@regression"
    },
    {
      "name": "@predefined3"
    }
  ]
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open url \"https://www.wiki.com/\"",
  "keyword": "Given "
});
formatter.match({
  "location": "PredefinedStepDefs.iOpenUrl(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I should see page title contains \"Wiki.com\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iShouldSeePageTitleContains(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "element with xpath \"//input[@name\u003d\u0027q\u0027]\" should be present",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.elementWithXpathShouldBePresent(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"Cucumber\" into element with xpath \"//input[@name\u003d\u0027q\u0027]\"",
  "keyword": "When "
});
formatter.match({
  "location": "PredefinedStepDefs.iTypeIntoElementWithXpath(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on element with xpath \"//input[@name\u003d\u0027btnG\u0027]\"",
  "keyword": "And "
});
formatter.match({
  "location": "PredefinedStepDefs.iClickOnElementWithXpath(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for 1 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I should see page title contains \"Form is not secure\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iShouldSeePageTitleContains(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on element with xpath \"//button[@id\u003d\u0027proceed-button\u0027]\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iClickOnElementWithXpath(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for 1 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I should see page title contains \"Wiki.com\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iShouldSeePageTitleContains(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I switch to iframe with xpath \"//iframe[@name\u003d\u0027googleSearchFrame\u0027]\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iSwitchToIframeWithXpath(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "element with xpath \"//*[contains(text(),\u0027Cucumber\u0027)]\" should contain text \"Cucumber\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.elementWithXpathShouldContainText(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for 5 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
});