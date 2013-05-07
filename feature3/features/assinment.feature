Feature: signed in user should be signed out when he switches from domestic to International Ship mode



Scenario: Creating a New User Profile
Given I am on the home page
When I click on SignIn link
Then I should be in "Sign In" page
When I click Create button
	And I enter new profile details in site
	And I click on Create Profile button
	And I click on Signout link
	Then I should be on the home page.



Scenario: signed in user should be signed out when he switches from domestic to IS mode

Given I am on the home page and not signed in
When I click on SignIn link
Then I should be in "Sign In" page
When I give valid credentials "UserName" and "Password"
And I click on "Men" FOB
Then I should see "Men's" on Left Pane
When I click on "Shirts"
Then I should see "Shirts" on Left Pane
And it should be a browse page
When I click on change Country from the footer
And I select country "Australia" and Currency "Australian Dollar"
And I click on "Save & Continue" Button
Then Iship Welcome Mat should be displayed
When I click on "Shop Now" Button
Then the page should be in Iship Mode where "Australian Flag" should be displayed on the header and Footer
And I should not see the text "Sign out" in the page
And Go to US Site should be displayed in the footer
