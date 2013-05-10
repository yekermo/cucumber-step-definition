Given(/^I am on the home page$/) do
  wait_for_elements_exist(["label marked:'home'"])
end

When(/^I click on "([^\"]*)" FOB$/) do |men_id|
  touch("tableViewCell marked:'#{men_id}'")
end

Then(/^I should see "(.*?)" on Left Pane$/) do |mens_id|
  wait_for_elements_exist(["view: 'leftPane' label text: '#{mens_id}'"])
end

Then(/^it should display as category splash page$/) do
  wait_for_elements_exist(["view: 'category_splash_page" ])
end

When(/^I click on "(.*?)"$/) do |shirts|
  touch("button marked:'#{shirts}'")
end

When(/^it should be a browse page$/) do
  wait_for_elements_exist(["label text:'browse'"])
end

When(/^I click on the First product from the browse page$/) do
  
  @product = query("tableViewCell index:0",text)
end

Then(/^Product PDP Page should be displayed$/) do
  check_element_exists("label text:'product description'")
end

Then(/^I select a available size of the product$/) do
  touch("tableViewCell index:0 label marked:'sample_size'")
end

Then(/^I select a color of the product$/) do
   touch("tableViewCell index:1 label marked:'sample_color'")
end

Then(/^I select "(.*?)" quantity$/) do |quantity|
   touch("tableViewCell index:2 label marked:'#{quantity}'")
end

When(/^I click on add to bag$/) do
  touch("button marked:'add_to_bag'")
end

Then(/^I should see add to bag confirmation Overlay with added item details$/) do
  wait_for_elements_exist(["view: 'confirmOverlay' tableViewCell index:0"])
end

Then(/^I click on "(.*?)" Button$/) do |checkout|
  touch("button marked:'#{checkout}")
end

Then(/^I should be in Shopping Bag page$/) do
  wait_for_elements_exist("label text:'shopping_bag_page'")
end

When(/^I click on added "(.*?)" link$/) do |product_name|
  touch("link")
end

Then(/^I verify the selected product name$/) do
  check_element_exists("label marked:'verify_product")
end

Then(/^I should see the previously selected color populate automatically$/) do
  check_element_exists("label marked:'verify_product")
end

Then(/^I should see the previously selected size populate automatically$/) do
  check_element_exists("label marked:'verify_product")
end

Then(/^I should see the previously selected quantity populate automatically$/) do
  check_element_exists("label marked:'verify_product")
end

Then(/^I should see "(.*?)" Button$/) do |add_another|
  check_element_exists("label marked:'verify_product")
end

Then(/^I select a different available size of the product again$/) do
  check_element_exists("label marked:'different_size")
end

Then(/^I select a different color of the product again$/) do
  check_element_exists("label marked:'different_color")
end

Then(/^I click on update button$/) do
  touch("button marked:'update'")
end

Then(/^I should see updated color on the overlay$/) do
  wait_for_elements_exist("view:overlay")
  check_view_with_mark_exists("color:'update'")
end

Then(/^I should see updated size on the overlay$/) do
  check_view_with_mark_exists("size:'update'")
end

Then(/^I should see updated quantity on the overlay$/) do
  check_view_with_mark_exists("quantity:'update'")
end

Then(/^I should see updated color in the shopping bag page$/) do
  wait_for_elements_exist(["view:'shopping_bag_page'"])
  check_element_exists("label marked: 'updated_color'")
end

Then(/^I should see updated size in the shopping bag page$/) do
  check_element_exists("label marked: 'updated_size'")
end

Then(/^I should see updated quantity in the shopping bag page$/) do
  check_element_exists("label marked: 'update_quantity' }")
end

Then(/^I should be on the Sign In \- Macy\'s Checkout page$/) do
  wait_for_elements_exist("label marked:'sign_in'")
end

When(/^I click on added Product Name link$/) do
  touch("label text:'product_name'")
end


