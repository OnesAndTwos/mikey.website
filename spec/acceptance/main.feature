Feature: Main Page
  So that my visitors can visit and navigate my site
  I want a page they can land on

  Scenario: Landing page welcomes you
    When I visit the 'landing' page
    Then I should see 'Welcome'