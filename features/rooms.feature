Feature: Rooms

  Rooms are places where people can chat

  Scenario: Create a room
    Given I am viewing the rooms
    When I create a room
    Then I should see the new room

  Scenario: Change the room name
    Given there is a room foo
    And I am editing the room
    When I change the room name to bar
    Then the room should be named bar

  # Scenario: Editing the room name
  #   Given there is a room foo
  #   And I am viewing the room
  #   When I change the room name to bar with turbo
  #   Then the room should be called bar
