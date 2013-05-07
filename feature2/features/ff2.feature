Feature: update qty

Scenario: Creating new registry and verifying whether it is created or not.
Given I am on the home page
When I Navigate to The Registry Page
And I click on Create Registry Link
Then I should be in "Registry Capture Email" page
	When I Enter the necessary credentials to create new registry
	And I click on "create_reg_continue_btn" Button
	And Enter the create new registry page details
Then I verify that the registry is created successfully

Scenario: Updating Registry Information and Verifying whether it is updated or not.
Given I am on the home page
When I click on SignIn link
Then I should be in "Sign In" page
When I give valid credentials "username" and "password" for the given URL
	And Navigate to The Registry Page
	And I click on Manage button in Registry Manager page of the given URL
	And I click on the link to Edit Profile Account in BVR page
	And I update the information of the Registrant
	And I click on the link to Edit Profile Account in BVR page
Then I verify if the information is updated
