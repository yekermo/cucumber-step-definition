Feature: Verification of International Shopping bag for after adding a product

Scenario: Australian currency verification on International shipping
Given I am on the Home Page 
	And I switched to International Shipping Mode by clicking on "change country" 
	And select Country as "Australia" and Currency as "Australian Dollar" 
	And click on "Save & Continue"
Then I should be on the International home page
When I select a top level category
	And I select a left nav category
	And I select a product from the product list
Then I verify if I have the added items in my shopping bag
Then I should be navigated to shopping bag page
	And price of the product in shopping bag page should be in currency "AUD"