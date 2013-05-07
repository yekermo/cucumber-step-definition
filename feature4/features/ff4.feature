Feature:  When navigate to ineligible product in iship mode error message should be displayed.


Scenario: Navigate to Suppressed product in International mode and verify if error message is displayed

Given I am on the home page
When I click on "Beauty" 
Then I should see "Makeup" in Left Pane below the header "shop by category"
When I click on "Makeup"
And I click on the First product from the browse page
Then Product PDP Page should be displayed
When I click on change Country from the footer
And I select country "Canada" and Currency "Canadian Dollar"
And I click on "Save & Continue" Button
Then Iship Welcome Mat should be displayed
When I click on "Shop Now" Button
Then the page should be in Iship Mode where "Canada Flag" should be displayed on the header and Footer
Then Error message "This item is not available for shipping to Canada." should be displayed in the PDP Page
Then for the product "Add to bag" button should not be displayed
