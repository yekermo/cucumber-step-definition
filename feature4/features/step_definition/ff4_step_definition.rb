Given(/^I am on the home page$/) do
  wait_for_elements_exist(["label marked:'home'"])
end

When(/^I click on "(.*?)"$/) do |beauty|
  touch("button marked:'beauty' text:'beauty'")
end

Then(/^I should see "(.*?)" in Left Pane below the header "(.*?)"$/) do |makeup, header|
  check_element_exists("view:'webView'  css:'header' desendent css:'left_pane' ")
end

When(/^I click on the First product from the browse page$/) do
  check_element_exists("tabelViewCell index:0")
end

Then(/^Product PDP Page should be displayed$/) do
  check_element_exists("view:'pdpClass' marked:'product_detail' text: 'product detail'")
end

When(/^I click on change Country from the footer$/) do
  touch("webView  css:'footer' css:'change_country'")
end

When(/^I select country "(.*?)" and Currency "(.*?)"$/) do |country, currency|
  touch("webView  css:'country'")
  touch("webView  css:'currency'")
end

When(/^I click on "(.*?)" Button$/) do |save_and_continue|
  touch("button marked:'#{save_and_continue}' text:'save and continue'")
end

Then(/^Iship Welcome Mat should be displayed$/) do
  check_element_exists("webView   text:'welcome Mat")
end

Then(/^the page should be in Iship Mode where "(.*?)" should be displayed on the header and Footer$/) do |ship_mode|
 check_element_exists("view:'headerClass'")
  check_element_exists("view:'footerClass'")
  check_element_exists("view: 'ishipMode'")
end

Then(/^Error message "(.*?)" should be displayed in the PDP Page$/) do |error_message|
 check_element_exists("class:'pdpClass' marked:'#{error_message}'")
end

Then(/^for the product "(.*?)" button should not be displayed$/) do |product|
  check_element_does_not_exist("button marked:'#{product}'")
end