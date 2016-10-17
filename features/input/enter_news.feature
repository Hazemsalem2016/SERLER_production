Feature: administrator enter news
   As a registered administrator
   I want to enter news for user
 
Background:
  Given I'm logged in as a registered administrator
  And I click Enter News link
@javascript
Scenario: add news
   When I type specific news and click PUBLISH
   Then we will see News successfully published

