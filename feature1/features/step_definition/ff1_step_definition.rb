Given(/^I am on the home page$/) do
  visit("/home")
end

When(/^I click on "([^\"]*)" FOB$/) do |men_id|
  find(:xpath,".//*[@id='men']").click
end

Then(/^I should see "(.*?)" on Left Pane$/) do |mens_id|
	within(:xpath,"//div[@id='left_pane']") do
		page.should have_xpath(:xpath,"div[@id='#{mens_id}']")
	end
end

Then(/^it should display as category splash page$/) do
   page.should have_xpath("//img[@src=\"/path/images\"]")
end

When(/^I click on "(.*?)"$/) do |shirts|
  find(:xpath,".//*[@id='#{shirts}']").click
end

When(/^it should be a browse page$/) do
  page.should have_xpath(".//div[@id='browse_page']")
end

When(/^I click on the First product from the browse page$/) do  
  find(:xpath,".//products/product[1]").click
end

Then(/^Product PDP Page should be displayed$/) do
  page.should have_xpath(".//div[@id='pdp_page']")
end

Then(/^I select a available size of the product$/) do
 check(".//*[@id='size']")
end

Then(/^I select a color of the product$/) do
  check(".//*[@id='color']")
end

Then(/^I select "(.*?)" quantity$/) do |quantity|
  check(".//*[@id='#{quantity}']")
end

When(/^I click on add to bag$/) do
 check(".//*[@id='add']")
end

Then(/^I should see add to bag confirmation Overlay with added item details$/) do
  page.should have_css('bag_confirmation')
end

Then(/^I click on "(.*?)" Button$/) do |checkout|
 find(:xpath,".//*[@id='color']").click
end

Then(/^I should be in Shopping Bag page$/) do
    page.should have_css('shopping_bag')
end

When(/^I click on added "(.*?)" link$/) do |product_name|
  find(:xpath,".//*[@id='product_name']").click
end

Then(/^I verify the selected product name$/) do
 page.should have_content('product name')
end

Then(/^I should see the previously selected color populate automatically$/) do
  page.should have_content('color')
end

Then(/^I should see the previously selected size populate automatically$/) do
  page.should have_content('size')
end

Then(/^I should see the previously selected quantity populate automatically$/) do
  page.should have_content('quantity')
end

Then(/^I should see "(.*?)" Button$/) do |add_another|
  page.should have_content('#{add_another}')
end

Then(/^I select a different available size of the product again$/) do
  check(".//*[@id='size']")
end

Then(/^I select a different color of the product again$/) do
  check(".//*[@id='color']")
end

Then(/^I click on update button$/) do
 check(".//*[@id='update button']")
end

Then(/^I should see updated color on the overlay$/) do
	within(:xpath,"//div[@id='overlay']") do
		 page.should have_content('updated color')
	end
end

Then(/^I should see updated size on the overlay$/) do
	within(:xpath,"//div[@id='overlay']") do
		 page.should have_content('updated size')
	end
end

Then(/^I should see updated quantity on the overlay$/) do
	within(:xpath,"//div[@id='overlay']") do
		 page.should have_content('updated quantity')
	end
end

Then(/^I should see updated color in the shopping bag page$/) do
	within(:xpath,"//div[@id='shopping_bag']") do
		 page.should have_content('updated color')
	end
end

Then(/^I should see updated size in the shopping bag page$/) do
	within(:xpath,"//div[@id='shopping_bag']") do
		 page.should have_content('updated size')
	end
end

Then(/^I should see updated quantity in the shopping bag page$/) do
	within(:xpath,"//div[@id='shopping_bag']") do
		 page.should have_content('updated quantity')
	end
end

Then(/^I should be on the Sign In \- Macy\'s Checkout page$/) do
	page.should have_content('sign_in')	
end

When(/^I click on added Product Name link$/) do
	click_link('Link product_name')
end


