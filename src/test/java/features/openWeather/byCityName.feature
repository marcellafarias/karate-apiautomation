Feature: Search the city temperature By Name

  Background:
    * url 'http://192.168.15.11:8080'
    Given path '/data/2.5/weather'

  @byName
  Scenario: Search by city name
    And param q = 'London,uk'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 200
    And match response contains { "weather": }
    And match response contains { "name":"Mountain View" }

  @byName
  Scenario: Search for a non-existent city
    And param q = 'Jujulandia'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 404

  @byName
  Scenario: Search city by invalid parameter
    And param q = '898S89S8S9'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 400

  @byName
  Scenario: Search by city without token
    And param q = 'London,uk'
    When method get
    Then status 401