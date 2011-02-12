Feature: Listing of posts


Scenario: Posts list
  Given a note exists with body: "Content of note"
  And another note exists with body: "Another content of note"
  When I go to the posts list page
  Then I should see "Content of note"
  And I should see "Another content of note"

Scenario: I want to see specific post
  Given a note exists with body: "Content of note"
  When I go to the show page for that note
  And I should see "Content of note"