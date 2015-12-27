Feature: login
  Scenario: successful login
    Given login page
    When I enter a valid username
    And enter a valid password
    And press submit button
    Then login is successful

    Scenario: unsuccessful login
      Given login page
      When I enter a valid username
      And enter a invalid password
      And press submit button
      Then login fails

      Scenario: no password
        Given login page
        When I enter a valid username
        And press submit button
        Then login fails

        Scenario: wrong username
          Given login page
          When I enter a wrong username
          And enter a valid password
          And press submit button
          Then login fails

          Scenario: no data
            Given login page
            When press submit button
            Then login fails

            Scenario: no username
              Given login page
              When enter a valid password
              And press submit button
              Then login fails