Feature: Creating features for project

  Background:
    Given a project: "Devy" exists
    And I go to the show page for that project
    And I follow "Features"

  Scenario Outline: Creating feature
    When I fill in the following:
    |feature_name| <name>|
    |feature_description| <description>|
    And I press "Create Feature"
    And I should see "<response>"
    And I should see "<flash>"

  Examples:
  |name| description|response|flash|
  |Editing| Editing feature|Editing|New feature created|
  |          |                     | Name can't be blank |        |

