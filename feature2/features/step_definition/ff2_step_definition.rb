Given(/^I am on the home page$/) do
  visit("/home")
end

When(/^I Navigate to The Registry Page$/) do
  visit("/home/registry_home")
end

When(/^I click on Create Registry Link$/) do
  click_link('Link create_registry')
end

Then(/^I should be in "(.*?)" page$/) do |registry_capture_email|
  page.should have_xpath(:xpath,"div[@id='#{registry_capture_email}']")
end

When(/^I Enter the necessary credentials to create new registry$/) do
	fill_in 'Name' :with=>'user.name'
	fill_in 'Password' :with=>'user.password'
end

When(/^I click on "(.*?)" Button$/) do |sign_in|
	click_button('#{sign_in}')
end

When(/^Enter the create new registry page details$/) do
	# detail = Factory.create(:admin)
	fill_in 'detail1' :with=>'page.detail1'
	fill_in 'detail2' :with=>'page.detail2'
end

Then(/^I verify that the registry is created successfully$/) do
  check_element_exist("view:'registryClass' marked:'registry'")
end

When(/^I click on SignIn link$/) do
  click_button('singin_in')
end

When(/^I give valid credentials "(.*?)" and "(.*?)" for the given URL$/) do |username, password|
  # user = Factory.create(:admin)
	fill_in 'Name' :with=>'user.name'
	fill_in 'Password' :with=>'user.password'
end

When(/^Navigate to The Registry Page$/) do
  visit('/home/Registy')
end

When(/^I click on Manage button in Registry Manager page of the given URL$/) do
	click_button('Manage')
end

When(/^I click on the link to Edit Profile Account in BVR page$/) do
	within(:xpath,"//div[@id='BVR']") do
		 click_link('edit_profile')
	end

When(/^I update the information of the Registrant$/) do
  click_link('update')
end

Then(/^I verify if the information is updated$/) do
  click_button('information')
end