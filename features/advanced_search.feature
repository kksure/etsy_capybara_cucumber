Feature:

  In order to show the browsing cart functionality
  As a user
  I want to browse in a gallery

  Scenario: Browsing around the site for items

    Given I am on Etsy.com
    When I want to browse through a treasury gallery
    Then results will be displayed in the gallery

  Scenario: Advanced Search for a ring

    Given I am searching on Etsy.com
    When I specify the Jewelry sub category
    And I search for ring
    Then there are search results