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
end
page = Helper.new


Given(/^I am on the home page$/) do
  page.visit('/home')
end

When(/^I Navigate to The Registry Page$/) do
  page.visit('/home/registry')
end

When(/^I click on Create Registry Link$/) do
  page.find_and_click(:xpath,".//*[@id='create_registry']")
end

Then(/^I should be in "(.*?)" page$/) do |registry_capture_email|
  page.should_have_css('registry_capture_email')
end

When(/^I Enter the necessary credentials to create new registry$/) do
  page.fill_in(:with=>'user.name')
  page.fill_in(:with=>'user.password')
end

When(/^I click on "(.*?)" Button$/) do |sign_in|
  page.find_and_click(:xpath,".//*[@id='sign_in']")
end

When(/^Enter the create new registry page details$/) do
 page.fill_in(:with => 'detail')
end

Then(/^I verify that the registry is created successfully$/) do
  page.verify('verify')
end

When(/^I click on SignIn link$/) do
  page.find_and_click(:xpath,".//*[@id='sign_in_link']")
end

When(/^I give valid credentials "(.*?)" and "(.*?)" for the given URL$/) do |arg1, arg2|
 # user = Factory.create(:admin)
 page.fill_in(:with => 'user.name')
 page.fill_in(:with => 'user.password')
end

When(/^Navigate to The Registry Page$/) do
  page.visit('/home/Registy')
end

When(/^I click on Manage button in Registry Manager page of the given URL$/) do
 page.find_and_click(:xpath,".//*[@id='manage']")
end

When(/^I click on the link to Edit Profile Account in BVR page$/) do
  page.find_and_click(:xpath,".//*[@id='edit_profile']")
end

When(/^I update the information of the Registrant$/) do
  page.update('information')
end

Then(/^I verify if the information is updated$/) do
  page.verify('information')
end