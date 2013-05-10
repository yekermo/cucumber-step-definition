Given(/^I am on the home page$/) do
 wait_for_elements_exist(["label marked:'home'"])
end

When(/^I click on SignIn link$/) do
  touch("detectorTypeLink marked:'singin_in' text:'Sing In")
end

Then(/^I should be in "(.*?)" page$/) do |sign_in|
  check_element_exists("tableView label marked:'#{singin_in}")
end

When(/^I click SigninIn button$/) do
  touch("label  marked: 'singin_in")
end

Then(/^I should be on the home page\.$/) do
  check_element_exists("view:'tableViewCell' marked:'home' text:'home'")
end

Given(/^I am on the home page and not signed in$/) do
  check_element_exists("view:'tableViewCell' marked:'home' text:'home'")
  check_element_exists("view:'tableViewCell'  marked:'singin_out text:'Signout'")
end

When(/^I give valid credentials "(.*?)" and "(.*?)"$/) do |username,password|
  # user = Factory.create(:admin)
   set_text("textField marked:'username', 'userName'")
  set_text("textField marked:'password', 'password'")
end

When(/^I click on "(.*?)" FOB$/) do |men|
  touch("detectorTypeLink marked:'men_fob'  text:'men'")
end

Then(/^I should see "(.*?)" on Left Pane$/) do |mens|
  check_element_exists("webView css:'left_pane' text:'mens'")
end

When(/^I click on "(.*?)"$/) do |shirts|
  touch("view:'tableView' marked:'#{shirts}")
end

Then(/^it should be a browse page$/) do
  check_element_exists("view:'tableView'  marked:'browse_page'")
end

When(/^I click on change Country from the footer$/) do
  touch("view:'footer' label marked:'change-country'")
end

When(/^I select country "(.*?)" and Currency "(.*?)"$/) do |country, currency|
  touch("label  marked:'select' text:'country'")
  touch("label  marked:'select' text:'currency'")
end

When(/^I click on "(.*?)" Button$/) do |save_and_continue|
  touch("button  marked:'#{save_and_continue}")
end

Then(/^Iship Welcome Mat should be displayed$/) do
  check_element_exists("'iShipWelcomeMat  marked:'welcome_mat'")
end

Then(/^the page should be in Iship Mode where "(.*?)" should be displayed on the header and Footer$/) do |arg1|
  check_element_exists("view:'headerClass'")
  check_element_exists("view:'footerClass'")
  check_element_exists("view: 'ishipMode'")
end

Then(/^I should not see the text "(.*?)" in the page$/) do |sign_out|
  check_element_should_not_exist("tableView text:'singin_out'")
end

Then(/^Go to US Site should be displayed in the footer$/) do
  check_element_exists("label marked:'go_to_us' text:'got to us'")
end

When(/^I click Create button$/) do
  touch("button marked:'create' text:'create'")
end

When(/^I enter new profile details in site$/) do
  set_text("textField marked:'profile_detail' 'sample profile detail'")
end

When(/^I click on Create Profile button$/) do
  touch("button marked='create_profile' text:'create_profile'")
end

When(/^I click on Signout link$/) do
  page.click_button("button  marked='singin_out' text:'signout'")
end


