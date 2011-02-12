Feature: Creating code snippets

  Background:
    Given I go to the new snippet page


  Scenario Outline: Creating snippets
    When I fill in the following:
    |snippet_body| <body>|
    And I select "<lang>" from "snippet_language"
    And I press "Create Snippet"
    Then I should see "<response>"
    And I should see "<flash>"

    Examples:
    |body| lang| response| flash|
    |Code| Ruby| Code|New snippet was created|
    |    |     |     | Body can't be blank|