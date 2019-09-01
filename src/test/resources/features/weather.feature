Feature: Test for Open MetaWeather API calls

  @Automation  @Positive
  Scenario Outline: Check if the weather forecast response for <location> for <day> is as expected.
    Given Open MetaWeather API end point is available with "<woeid>" using "<date>"
    When  I submit GET request to MetaWeather endpoint call "<date>"
    Then endpoint should return weather_state_name as expected with valid status code

    Examples:
      | tc_id | woeid| date     |
      |   001 | 44418|2019/08/21|
      |   002 | 44418|2019/08/23|


  @Manual @Negative
  Scenario Outline: Check if the weather forecast response for <location> for <day> is as expected.
    Given Open MetaWeather API end point is avilable with "<woeid>" using "<date>"
    When  I submit GET request to MetaWeather endpoint call
    Then endpoint should return <status_code>
    Examples:
      | tc_id |woeid| date     |
      |   003 |44418|2019/08/00|
      |   004 |44418|2019/08/|
      |   005 |44418|0000/00/00|

  @Manual @Psitive @Negative

  Scenario Outline: Check if the weather forecast response for <location> method  is as expected
    Given Open MetaWeather API end point is avilable with "<woeid>"
    When  I submit GET request to MetaWeather endpoint call using "<woeid>"
    Then endpoint should return 200

    Examples:
      | tc_id |woeid|
      |006    |44418|
      |007    |2487956|
      |008    |123456|
      |009    |00000|
