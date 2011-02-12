Feature: Creating notes

  Background:
    Given I go to the new note page

  Scenario Outline: I create some notes
    When I fill in the following:
    |note_title| <title> |
    |note_body | <body>  |
    |note_tag_list| <tags>|
    And I press "Create Note"
    Then I should see "<response>"
    And I should see "<flash>"

    Examples:
    |title| body|tags |response | flash|
    | Lorem ipsum |Lorem ipsum dolor sit amet|tag tag| Lorem ipsum| New note was created|
    | Lorem ipsum |               |           | Body can't be blank|                 |




