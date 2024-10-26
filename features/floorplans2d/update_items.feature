@javascript
Feature: Sync features between 2d and 3d

Background:
Given I am on the "home" page
When I click on the "Get Started" button
Then I should be on the "plans" page
Given the following plans exist:
    | name        | owner   | venue_length     | venue_width |
    | My Plan     | test@email.com    | 100               | 100         |
When I add a step for "My Plan" with the following details:
| start_date | start_time       | end_time         |
| 2021-04-01 | 2021-04-01 10:00 | 2021-04-01 11:00 |
    
    Scenario: Testing the sync feature
    Given I am on the "plans" page
    Then I click on the button with "play" icon for the plan "My Plan" to enter the "edit floorplans 2d" page
    Then It should load all the items in the floorplans 2d page
    Then I click on Preview in 3D button
    Then I should be on the "blueprints" page
    When I click on Add Items
    When I click on the "Chair" item on the add items page
    #Then I should see "Chair" added to the db
    