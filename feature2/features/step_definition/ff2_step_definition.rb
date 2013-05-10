Given(/^I am on the home page$/) do
  wait_for_elements_exist(["label marked:'home'"])
end

When(/^I Navigate to The Registry Page$/) do
  touch("button marked:'go_to_registry_page'")
  wait_for_elements_exist(["label marked:'registry_page'"])
end

When(/^I click on Create Registry Link$/) do
  touch("button marked:'create_registry_page'")
end

Then(/^I should be in "(.*?)" page$/) do |registry_capture_email|
  wait_for_elements_exist("label marked: '#{registry_capture_email}'")
end

When(/^I Enter the necessary credentials to create new registry$/) do
  page.fill_in(:with=>'user.name')
  page.fill_in(:with=>'user.password')
end

When(/^I click on "(.*?)" Button$/) do |sign_in|
  page.find_and_click(:xpath,".//*[@id='sign_in']")
end

When(/^Enter the create new registry page details$/) do
 page.fill_in(:with => 'detail')
end

Then(/^I verify that the registry is created successfully$/) do
  page.verify('verify')
end

When(/^I click on SignIn link$/) do
  page.find_and_click(:xpath,".//*[@id='sign_in_link']")
end

When(/^I give valid credentials "(.*?)" and "(.*?)" for the given URL$/) do |arg1, arg2|
 # user = Factory.create(:admin)
 page.fill_in(:with => 'user.name')
 page.fill_in(:with => 'user.password')
end

When(/^Navigate to The Registry Page$/) do
  page.visit('/home/Registy')
end

When(/^I click on Manage button in Registry Manager page of the given URL$/) do
 page.find_and_click(:xpath,".//*[@id='manage']")
end

When(/^I click on the link to Edit Profile Account in BVR page$/) do
  page.find_and_click(:xpath,".//*[@id='edit_profile']")
end

When(/^I update the information of the Registrant$/) do
  page.update('information')
end

Then(/^I verify if the information is updated$/) do
  page.verify('information')
end