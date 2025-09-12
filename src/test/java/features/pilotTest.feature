Feature: Sample API Test

  @smoke
  Scenario: Get a list of users
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name == 'Michael'
    And match response.data[4].id == 11