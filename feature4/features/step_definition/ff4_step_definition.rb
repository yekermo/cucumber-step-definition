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

  def fill_in(val)
  end

  def update(information)
  end

  def should_not_have_content(content)
  end
end
page = Helper.new

Given(/^I am on the home page$/) do
  page.visit('/home')
end

When(/^I click on "(.*?)"$/) do |beauty|
  page.click_button('#{beauty}')
end

Then(/^I should see "(.*?)" in Left Pane below the header "(.*?)"$/) do |makeup, header|
  page.should_have_xpath(".//*[id='left_pane']")
   page.should_have_css('#{header}')
    page.should_have_css('#{makeup}')
end

When(/^I click on the First product from the browse page$/) do
  page.visit('/home/browse_page')
  page.find_and_click(:xpath, './/product/product[0]')
end

Then(/^Product PDP Page should be displayed$/) do
  page.should_have_css('pdp_page')
end

When(/^I click on change Country from the footer$/) do
  page.find_and_click(:xpath,".//*[@id='change_country']")
end

When(/^I select country "(.*?)" and Currency "(.*?)"$/) do |country, currency|
  page.select('country')
  page.select('currency')
end

When(/^I click on "(.*?)" Button$/) do |save_and_continue|
  page.find_and_click(:xpath,".//*[@id='save_and_continue']")
end

Then(/^Iship Welcome Mat should be displayed$/) do
  page.should_have_css('I ship Welcome')
end

Then(/^the page should be in Iship Mode where "(.*?)" should be displayed on the header and Footer$/) do |ship_mode|
 page.should_have_css('#{ship_mode}')
end

Then(/^Error message "(.*?)" should be displayed in the PDP Page$/) do |error_message|
 page.should_have_css('#{error_message}')
end

Then(/^for the product "(.*?)" button should not be displayed$/) do |product|
  page.should_not_have_content('#{product}')
end