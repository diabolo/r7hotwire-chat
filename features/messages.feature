Feature: Messages

  When you are in a room you can send a message

  Scenario: Send a message
    Given there is a room
    And I am in the room
    When I add a new message
    Then I should see my new message
