Feature: Build Pagination functionality as on existing browse page, so user could navigate to other search results pages

Scenario: Without Pagination
Given I am on Home Page
When I search for a product with less than forty results
Then I "should not" see pagination

Scenario: Pagination using Next / Previous button
Given I am on Home Page
When I search for a product with more than hundred results
Then I "should" see pagination
When I click "2" pagination number
Then I should be on "2" page
When I click on "Next" pagination button 
Then I should be on "3" page
When I click on "Previous" pagination button
Then I should be on "2" page


