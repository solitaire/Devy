Feature: Browsing features for project

Scenario: Projects features list
  Given a project: "Devy" exists
  And the following features exist:
    |name| description| status| project|
    |Creating|                |implemented | project "Devy"|
    |Editing|                   | implemented | project "Devy"|
    |Updating|                | implemented | project "Devy"|
  When I go to the show page for that project
  Then I should see "Creating"
  And I should see "Updating"
