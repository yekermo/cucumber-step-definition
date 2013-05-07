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

Given(/^I am on home page$/) do
  page.visit('/home')
end

When(/^I search for "(.*?)" in search text field$/) do |keyword|
  page.search('#{keyword}')
end

When(/^I click "(.*?)" button$/) do |search|
  page.find_and_click(:xpath,'#{search}')
end

Then(/^I should be on the "(.*?)" page$/) do |search_result|
  page.should_not_have_css('#{search_result}')
end

Then(/^number of items found should be greater than zero$/) do
  page.verify('verify_to_be_greaterthatnzero')
end

Then(/^I should see "(.*?)" on the header$/) do |keyword|
 page.should_not_have_css('#{keyword}')
end

Then(/^verify for few products if the "(.*?)" exist in product description below product Image$/) do |arg1|
  page.verify('#{arg1}')
end

Then(/^I should see "(.*?)" on Left Pane$/) do |narro_result|
  page.should_have_css('#{narro_result}')
end