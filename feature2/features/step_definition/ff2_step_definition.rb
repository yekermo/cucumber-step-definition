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
  set_text("textField marked:'username', 'userName'")
  set_text("textField marked:'password', 'password'")
end

When(/^I click on "(.*?)" Button$/) do |sign_in|
  touch("button marked: 'sign_in'")
end

When(/^Enter the create new registry page details$/) do
  wait_for_elements_exist("label marked:'page_registry' text:'page registry'")
  set_text("textField marked:'registry_detail', 'registry some details'")
end

Then(/^I verify that the registry is created successfully$/) do
  check_element_exist("view:'registryClass' marked:'registry'")
end

When(/^I click on SignIn link$/) do
  touch("link marked:'signin")
end

When(/^I give valid credentials "(.*?)" and "(.*?)" for the given URL$/) do |username, password|
  set_text("textField marked:'username', 'userName'")
  set_text("textField marked:'password', 'password'")
end

When(/^Navigate to The Registry Page$/) do
  touch("label marked: 'go_to_registry_page'")
end

When(/^I click on Manage button in Registry Manager page of the given URL$/) do
 
end

When(/^I click on the link to Edit Profile Account in BVR page$/) do
  wait_for_elements_exist("label marked:'bvr_page'")
  touch("label marked:'edit_profile' text:'edit Profile Account'")
end

When(/^I update the information of the Registrant$/) do
  set_text("textField marked:'information_of_registry', 'sample information is filled in'")
end

Then(/^I verify if the information is updated$/) do
  check_element_exist("view:'information-update' textField text:'sample registered information'")
end