Feature: Save searches
    As a registered user
    I want to be able to save any searches I make
    So that I can easily run them again later to save time

    Background:
        Given I'm logged in as a user at save search test
        Given I'm on search page at save search test
        Given There is ‘Save’ button on search page
        Given There are 3 papers in DB

    Scenario: User type basic keywords to save
        When I click the save button
        Then I should save the search I make
