Feature: Index page
  In order to test this stuff
  
  @javascript
  Scenario: Visit index page
    Given I am on "the home page"
    Then I should see "Hello SpecServer!"
    When I press "Push me for DOM swappage"
    Then I should see "Hello Wakawaka"
    When I press "Push me for AJAX swappage"
    Then I should see "Ooh dynamically loaded text"
