Feature: Test Bucket endpoints

   Scenario: create Bucket
    * def bucket =
      """
      {
      id: '0d361548-f415-4fba-9490-79f7f3256cec',
      position: 1,
      name: "TODO"
      }
      """
    Given url 'http://localhost:8080'
    And path 'v1/buckets'
    And request bucket
    When method post
    Then status 201