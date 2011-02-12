Feature: Creating new project

Background:
  Given I go to the new project page

 Scenario Outline: I create new project
   When I fill in the following:
   |Name| <name>|
   |Description|<description>|
   And I press "Create Project"
   Then I should see "<response>"
   And I should see "<flash>"

   Examples:
   |name| description| response| flash|
   | Devy| Project management| Devy| New project created|
   |         |                              |       | Name can't be blank|
