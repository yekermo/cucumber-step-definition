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

Given(/^I am on Home Page$/) do
  page.visit('/home')
end

When(/^I search for a product with less than forty results$/) do
  page.search('item_to_search')
end

Then(/^I "(.*?)" see pagination$/) do |arg1|
  page.should_not_have_css('pagination')
end

When(/^I search for a product with more than hundred results$/) do
  page.search('product_to_search')
end

When(/^I click "(.*?)" pagination number$/) do |number|
 page.find_and_click(:xpath,'#{number}')
end

Then(/^I should be on "(.*?)" page$/) do |number|
  page.should_not_have_css('#{number}')
end

When(/^I click on "(.*?)" pagination button$/) do |button|
  page.find_and_click(:xpath,".//*[@id='previous']")
end

When(/^I search Navapp for a product with more than hundred results$/) do
  page.search('item')
end
