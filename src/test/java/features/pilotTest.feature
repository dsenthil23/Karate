Feature: Sample API Test

  @smoke
  Scenario: Get a list of users
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name == 'Michael'
    And match response.data[4].id == 11

  @payload
  Scenario: Test with Payload
    Given url 'https://jsonplaceholder.typicode.com/posts'
    * def reqPayload = read('testData/payload.json')
    When method POST
    Then status 201
    And print response

  @headers
  Scenario: Testing with request Headers
    Given url 'https://reqres.in/api/users'
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
    And print response
    And match response.data[1].id == 2