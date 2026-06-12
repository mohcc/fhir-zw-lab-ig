@lab-order-repository
Feature: Lab Order Repository — stores and serves submitted orders

  The server under test (SHR in the national architecture) plays the Lab Order
  Repository. Each scenario seeds its own order via the placer helper, then
  asserts the repository's storage and search behaviour (order-pull-01).

  Background:
    * url shrUrl
    * def seeded = call read('common/submit-order.feature')

  Scenario: A submitted order's ServiceRequest is retrievable by patient
    Given path 'ServiceRequest'
    And param subject = 'Patient/' + seeded.patientId
    When method get
    Then status 200
    And match response.resourceType == 'Bundle'
    And match response.type == 'searchset'
    And match response.entry == '#[1]'
    And match response.entry[0].resource.id == seeded.serviceRequestId

  Scenario: The order Task is searchable by status and patient
    Given path 'Task'
    And param status = 'requested'
    And param patient = 'Patient/' + seeded.patientId
    When method get
    Then status 200
    And match response.type == 'searchset'
    And match response.entry == '#[1]'
    And match response.entry[0].resource.basedOn[0].reference contains seeded.serviceRequestId

  Scenario: Querying orders for an unknown patient returns an empty searchset
    * def query = read('../data/order-search-none.json')
    Given path 'ServiceRequest'
    And params query
    When method get
    Then status 200
    And match response.resourceType == 'Bundle'
    And match response.type == 'searchset'
    # no orders for this patient -> the searchset carries no entries
    * def entries = response.entry || []
    And match entries == '#[0]'

  @workshop @pending-validation
  Scenario: TODO (workshop) — the repository rejects a non-conformant order bundle
    # Requires validation-on-write on the sandbox (order-push-03).
    # Steps: POST data/order-bundle-invalid.json, expect 4xx + OperationOutcome.

  @workshop
  Scenario: TODO (workshop) — orders are searchable by receiving laboratory
    # Discussion point: Task.restriction.recipient has no standard search
    # parameter. Decide between Task.owner, a custom SearchParameter, or
    # tag-based routing, then implement the search here.
