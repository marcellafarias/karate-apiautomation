Feature: Search the city temperature by Geo Coordinates

  Background:
    * url 'http://api.openweathermap.org'
    Given path '/data/2.5/weather'

  @byGeo
  Scenario: Search by positive geographic coordinates
    And param lat = '35'
    And param lon = '139'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 200
    And match response contains { coord:{"lon":139,"lat":35} , weather: '#notnull', name: 'Shuzenji' }

  @byGeo
  Scenario: Search by negative geographic coordinates
    And param lat = '-16.92'
    And param lon = '145.77'
    And param APPID = 'ed6192f0c0b428e0a893b4b44c8d5adb'
    When method get
    Then status 200
    And match response contains { coord:{"lon":145.77,"lat":-16.92} , weather: '#notnull', name: 'Cairns' }
