Feature: My bootstrapped app kinda works
  In order to get going on coding my awesome app
  I want to have aruba and cucumber setup
  So I don't have to do it myself

  Scenario: Default UI
    When I run `wine-pdf`
    Then the exit status should be 64
    And the banner should be present

  Scenario: App just runs
    When I get help for "wine-pdf"
    Then the exit status should be 0
    And the banner should be present
    And the banner should document that this app takes options
    And the following options should be documented:
      |--version| |
    And the banner should document that this app's arguments are:
      |pdf_file | 'Path to the PDF file'|
