Feature: Put Request

  Background:
  * call read('common.feature')

  Scenario Outline: Usage of POST using Karate
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When request { "title":"updated title", "body":"updated title", "userId":"1" }
    And method put
    Then status 200
    And print 'Put Response is: ', response
    And match response contains {"title":"updated title", "body":"updated title", "userId":"1", "id": 1}
    Examples:
      | code |
      | 1  |


