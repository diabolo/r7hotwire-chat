Feature: Rooms

  Rooms are places where people can chat


  @wip @javascript
  Scenario: Create a room
    Given I am viewing the rooms
    When I create a room
    Then I should see my room
