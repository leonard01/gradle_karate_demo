Feature: Post Request

  Background:
  * call read('common.feature')

  Scenario Outline: Usage of POST using Karate
    Given url 'https://jsonplaceholder.typicode.com/posts/'
    When request { "title":"this is the title", "body":"this is the body", "userId":"1" }
    And method post
    Then status 201
    And print 'Post Response is: ', response
    And match response contains {"title":"this is the title", "body":"this is the body", "userId":"1", "id": 101}
    Examples:
      | code |
      | 1  |


