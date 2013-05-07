Feature: update qty

	Scenario: Verify Update qty, Remove item, Edit item, express checkout - Update qty

	Given I am on the home page
	When I click on "Men" FOB
	Then I should see "Men's" on Left Pane
	And it should display as category splash page
	When I click on "Shirts"
	And it should be a browse page
	And I click on the First product from the browse page
	Then Product PDP Page should be displayed
	And I select a available size of the product
	And I select a color of the product
	And I select "1" quantity
	When I click on add to bag
	Then I should see add to bag confirmation Overlay with added item details
	And I click on "CHECKOUT" Button
	Then I should be in Shopping Bag page
	When I click on added Product Name link
	Then Product PDP Page should be displayed
			And I verify the selected product name
			And I should see the previously selected color populate automatically
			And I should see the previously selected size populate automatically
			And I should see the previously selected quantity populate automatically
			And I should see "add another" Button
			And I select "2" quantity
			And I select a different available size of the product again
			And I select a different color of the product again
			And I click on update button
	Then I should see add to bag confirmation Overlay with added item details
			And I should see updated color on the overlay
			And I should see updated size on the overlay
			And I should see updated quantity on the overlay
	And I click on "CHECKOUT" Button
	Then I should be in Shopping Bag page
			And I should see updated color in the shopping bag page
			And I should see updated size in the shopping bag page
			And I should see updated quantity in the shopping bag page
	And I click on "Continue Checkout" Button
	Then I should be on the Sign In - Macy's Checkout page
	
