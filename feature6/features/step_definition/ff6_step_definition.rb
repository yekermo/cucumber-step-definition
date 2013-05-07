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


Given(/^I am on the home page$/) do
  page.visit('/home')
end

Then(/^I verify the site$/) do
 page.verify('home_page')
end

Given(/^I visit to the customer service page$/) do
  page.visit('/home/customer_service')
end

Then(/^I verify I am in the customer service page$/) do
  page.should_have_css('customer_service_page')
end

Then(/^I verify the customer service page URL$/) do
  page.should_have_css('customer_service_url')
end

Given(/^I get all the top level category into a list$/) do
  page.visit('top-level-category')
end

When(/^Navigate to The Wedding Registry Page$/) do
  page.visit('/home/wedding-registry')
end

When(/^I verify that the menus are different in the home page and registry page$/) do
  page.select('category')
end

When(/^I select a top level category$/) do
  page.select('category')
end

Then(/^I verify the display of selected category$/) do
  page.verify('selected_category')
end
