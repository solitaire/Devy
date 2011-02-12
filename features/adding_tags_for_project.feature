Feature: Adding tags for a project

Background:
  Given a project: "Devy" exists
  And I go to the edit page for that project

Scenario: I want to add some tags to existing project
  When I fill in "Tag list" with "Python, Ruby, Rails"
  And I press "Update Project"
  Then I should see "Project was successfully updated."
  And I should see "Python"
  And I should see "Ruby"
  And I should see "Rails"
