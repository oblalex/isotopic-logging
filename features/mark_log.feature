Feature: mark log entries with distinguishable prefix

  As an administrator
  I want to have log entries marked with same prefix within single operation
  So that I can distinguish and track operations even if log is written from
  multiple threads or sources

  As a developer
  I want to store prefix in some context
  So that I do not need to format it per each call to log and so that I can
  access it within nested functions without passing prefix to a function
  directly and screwing up its semantics

  Scenario: inject string with simple prefix
    Given   I don't care about prefix details
    When    I ask for prefix injector
    Then    I should get a context with delimited autogenerated prefix

  Scenario: inject string with detailed prefix
    Given   I want to add some detailes to prefix
    When    I ask for prefix injector
    Then    I should get a context with delimited autogenerated prefix containing details
