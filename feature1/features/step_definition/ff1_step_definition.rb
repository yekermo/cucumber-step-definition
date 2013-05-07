class Helper
  def visit(path)
  end
  
  def find_and_click(type,path)
  end

  def should_have_css(path)
  end
  
  def should_not_have_css(path)
  end
  
  def select(path)
  end
  
  def click_button(path)
  end
  
  def click_link(path)
  end

  def not_empty(items)
  end

  def is_currency(amount)
  end

  def should_have_xpath(path)
  end

  def verify(name)
  end
end
page = Helper.new

Given(/^I am on the home page$/) do
  page.visit("/home")
end

When(/^I click on "([^\"]*)" FOB$/) do |id|
  page.find_and_click(:xpath,".//*[@id='men']")
end

Then(/^I should see "(.*?)" on Left Pane$/) do |arg1|
  page.should_have_xpath(".//div[@id='left_pane']/div[@id='men']")
end

Then(/^it should display as category splash page$/) do
  page.should_have_xpath("//img[@src=\"/path/images\"]")
end

When(/^I click on "(.*?)"$/) do |shirts|
  page.find_and_click(:xpath,".//*[@id='#{shirts}']")
end

When(/^it should be a browse page$/) do
  page.should_have_xpath(".//div[@id='browse_page']")
end

When(/^I click on the First product from the browse page$/) do
  page.find_and_click(:xpath,".//products/product[1]")  
end

Then(/^Product PDP Page should be displayed$/) do
  page.should_have_xpath(".//div[@id='pdp_page']")
end

Then(/^I select a available size of the product$/) do
 page.select(".//*[@id='size']")
end

Then(/^I select a color of the product$/) do
   page.select(".//*[@id='color']")
end

Then(/^I select "(.*?)" quantity$/) do |quantity|
   page.select(".//*[@id='#{quantity}']")
end

When(/^I click on add to bag$/) do
  page.select(".//*[@id='add']")
end

Then(/^I should see add to bag confirmation Overlay with added item details$/) do
  page.should_have_css('bag_confirmation')
end

Then(/^I click on "(.*?)" Button$/) do |arg1|
  page.find_and_click(:xpath,".//*[@id='color']")
end

Then(/^I should be in Shopping Bag page$/) do
  page.should_have_css('shopping_bag')
end

When(/^I click on added "(.*?)" link$/) do |product_name|
  page.find_and_click(:xpath,".//*[@id='product_name']")
end

Then(/^I verify the selected product name$/) do
  page.verify('product_name')
end

Then(/^I should see the previously selected color populate automatically$/) do
  page.verify('color')
end

Then(/^I should see the previously selected size populate automatically$/) do
  page.verify('size')
end

Then(/^I should see the previously selected quantity populate automatically$/) do
  page.verify('quantity')
end

Then(/^I should see "(.*?)" Button$/) do |add_another|
  page.verify('#{add_another}')
end

Then(/^I select a different available size of the product again$/) do
  page.select('product')
end

Then(/^I select a different color of the product again$/) do
  page.select('color')
end

Then(/^I click on update button$/) do
  page.click_button('update')
end

Then(/^I should see updated color on the overlay$/) do
  page.verify('color_overlay')
end

Then(/^I should see updated size on the overlay$/) do
  page.verify('size_overlay')
end

Then(/^I should see updated quantity on the overlay$/) do
  page.verify('size_overlay')
end

Then(/^I should see updated color in the shopping bag page$/) do
  page.verify('color_shopping_bag')
end

Then(/^I should see updated size in the shopping bag page$/) do
  page.verify('color_shopping_bag')
end

Then(/^I should see updated quantity in the shopping bag page$/) do
  page.verify('quantity_shopping_bag')
end

Then(/^I should be on the Sign In \- Macy\'s Checkout page$/) do
  page.visit('/home/checkout')
end

When(/^I click on added Product Name link$/) do
  page.find_and_click(:xpath,".//*[@id='shirts']")
end


