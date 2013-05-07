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

  def search(search)
  end
end
page = Helper.new



Given(/^I am on the Home Page$/) do
  page.visit('/home')
end

Given(/^I switched to International Shipping Mode by clicking on "(.*?)"$/) do |change_country|
  page.find_and_click(:xpath,'#{change_country}')
end

Given(/^select Country as "(.*?)" and Currency as "(.*?)"$/) do |country, currency|
  page.select('country')
  page.select('currency')
end

Given(/^click on "(.*?)"$/) do |arg1|
 page.click_button(".//*[@id='save_and_continue']")
end

Then(/^I should be on the International home page$/) do
  page.visit('/home/international')
end

When(/^I select a top level category$/) do
  page.select('.//category')
end

When(/^I select a left nav category$/) do
  page.select('.//left_nav_catagory')
end

When(/^I select a product from the product list$/) do
  page.select('.//category/product')
end

Then(/^I verify if I have the added items in my shopping bag$/) do
  page.not_empty("items")
end

Then(/^I should be navigated to shopping bag page$/) do
  page.visit('home/shopping_bag')
end

Then(/^price of the product in shopping bag page should be in currency "(.*?)"$/) do |arg1|
  page.is_currency(arg1)
end