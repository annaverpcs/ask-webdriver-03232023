package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

import static support.TestContext.getDriver;

public class NBStepdefs {
    @Given("NB navigate to {string}")
    public void nbNavigateTo(String sURL) {
    getDriver().get("http://ask-int.portnov.com");
    }

    @Then("NB print title and info")
    public void nbPrintTitleAndInfo() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandle());
    }
}
