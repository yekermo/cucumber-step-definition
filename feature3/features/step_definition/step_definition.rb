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

When(/^I click on SignIn link$/) do
  page.find_and_click(:xpath,".//*[@id='SignIn']")
end

Then(/^I should be in "(.*?)" page$/) do |sign_in|
  page.should_have_css('sing_in')
end

When(/^I click SigninIn button$/) do
  page.find_and_click(:xpath,".//*[@id='sign_in']")
end


Then(/^I should be on the home page\.$/) do
  page.should_have_css('container')
end

Given(/^I am on the home page and not signed in$/) do
  page.visit('/home')
  page.should_have_css('singin_in')
end

When(/^I give valid credentials "(.*?)" and "(.*?)"$/) do |username,password|
  # user = Factory.create(:admin)
  page.fill_in(:with=>'user.#{username}')
  page.fill_in(:with=>'user.#{password}')
end

When(/^I click on "(.*?)" FOB$/) do |arg1|
  page.find_and_click(:xpath,".//*[@id='Signout']")
end

Then(/^I should see "(.*?)" on Left Pane$/) do |arg1|
  page.should_have_css('#{arg1}')
end

When(/^I click on "(.*?)"$/) do |shirts|
  page.click_button('#{shirts}')
end

Then(/^it should be a browse page$/) do
  page.should_have_css('browe_content')
end

When(/^I click on change Country from the footer$/) do
  page.find_and_click(:xpath,".//*[@id='change_country']")
end

When(/^I select country "(.*?)" and Currency "(.*?)"$/) do |country, currency|
  page.select('#{country}')
  page.select('#{currency}')
end

When(/^I click on "(.*?)" Button$/) do |save_and_continue|
  page.find_and_click(:xpath,".//*[@id='#{save_and_continue}']")
end

Then(/^Iship Welcome Mat should be displayed$/) do
  page.should_have_css('welcom_page')
end

Then(/^the page should be in Iship Mode where "(.*?)" should be displayed on the header and Footer$/) do |arg1|
  page.should_have_css('ship_mode')
  page.should_have_css('header')
  page.should_have_css('footer')
end

Then(/^I should not see the text "(.*?)" in the page$/) do |sign_out|
  page.should_not_have_content('#{sign_out}')
end

Then(/^Go to US Site should be displayed in the footer$/) do
  page.find_and_click(:xpath, '//h1')
end

When(/^I click Create button$/) do
  page.click_button('create')
end

When(/^I enter new profile details in site$/) do
  page.fill_in('profile_detail')
end

When(/^I click on Create Profile button$/) do
  page.click_button('create_profile')
end

When(/^I click on Signout link$/) do
  page.click_button('sign_out')
end


