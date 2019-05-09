Feature: Owner can view offers on Listing page
  As a cat owner,
  In order to choose host for my cat
  I need to be able to view the offers for my listing

  Background: Offers exists on a listing
    Given the following listings exist
    | pet_name  | pet_location    | pet_description   | start_date      | end_date      | pet_picture |
    | Leif      | Gothenburg      | I'm nice          | 2019-06-28      | 2019-06-29    | picture1    |
    And the following offers exists on a listing
    | name   | email           | location      | price  | listing |    
    | Felix  | felix@craft.se  | Gothenburg    | 100    | Leif    |
    And I visit the landing page
    And I should see "Leif"
    And I should see "Show listing" within "Leif" section

  Scenario: Owner can click on listing and see correct offers in that listing
    When I click "Show listing" within "Leif" section
    Then I should be on the "Leif" listing page
    And I should see "Felix"
    And I should see "felix@craft.se"
    And I should see "Gothenburg"
    And I should see "100 kr"
    And I should see "Accept offer"