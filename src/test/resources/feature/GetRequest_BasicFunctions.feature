Feature: Get Request & Basic Functions

  Background:
  * call read('common.feature')

  Given url 'https://api.coindesk.com/'

  Scenario Outline: Usage of GET using Karate
    Given path 'v1/bpi/currentprice.json'
    When method get
    Then status 200
    And match $ contains {time: '#notnull'}
    And match response contains {time: '#notnull'}
    And match response.time.updated contains call currentDate
    And match response.time.updatedISO contains call currentISODate
    And match response.disclaimer contains "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org"
    And match response.bpi.USD.code contains 'USD'
    Examples:
      | code |
      | 1  |



