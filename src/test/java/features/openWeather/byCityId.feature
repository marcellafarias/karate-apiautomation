Feature: Search the city temperature by ID

  Background:
    * url 'http://api.openweathermap.org'
    Given path '/data/2.5/weather'

  @byId
  Scenario: Search by city ID
    And param id = '2172797'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 200
    And match response contains { weather: '#notnull', id: 2172797, name: 'Cairns' }

  @byId
  Scenario: Search for a non-existent id
    And param id = '878878979879700988766'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 400
    And match response contains { message:"878878979879700988766 is not a city ID" }

  @byId
  Scenario: Search for a short id
    And param id = '0'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 400
    And match response contains { message:"Invalid ID" }

  @byId
  Scenario: Search for a invalid id
    And param id = 'invalid'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 400
    And match response contains { message:"invalid is not a city ID" }

  @byId
  Scenario: Search by city without token
    And param id = 2643743
    When method get
    Then status 401
    And match response contains { message:"Invalid API key. Please see http://openweathermap.org/faq#error401 for more info." }
