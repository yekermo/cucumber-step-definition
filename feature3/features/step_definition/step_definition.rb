Given(/^I am on the home page$/) do
 visit("/home")
end

When(/^I click on SignIn link$/) do
  click_link('Link sign_in')
end

Then(/^I should be in "(.*?)" page$/) do |sign_in|
  page.should have_content('sign in')
end

When(/^I click SigninIn button$/) do
  click_button('sign_in')
end

Then(/^I should be on the home page\.$/) do
  page.should have_content('home')
end

Given(/^I am on the home page and not signed in$/) do
  page.should have_content('signout')
end

When(/^I give valid credentials "(.*?)" and "(.*?)"$/) do |username,password|
  # user = Factory.create(:admin)
  fill_in 'Name' :with=>'user.name'
  fill_in 'Password' :with=>'user.password'
end

When(/^I click on "(.*?)" FOB$/) do |men|
  click_link('Link men')
end

Then(/^I should see "(.*?)" on Left Pane$/) do |mens|
  within(:xpath,"//div[@id='left_pane']") do
     page.should have_content('mens')
  end
end

When(/^I click on "(.*?)"$/) do |shirts|
  click_link('Link #{shirts}')
end

Then(/^it should be a browse page$/) do
  page.should have_content('browse')
end

When(/^I click on change Country from the footer$/) do
  click_link('change country')
end

When(/^I select country "(.*?)" and Currency "(.*?)"$/) do |country, currency|
  click_link('select country')
  click_link('select currency')
end

When(/^I click on "(.*?)" Button$/) do |save_and_continue|
  click_button('#{save_and_continue}')
end

Then(/^Iship Welcome Mat should be displayed$/) do
  page.should have_content('welcome')
end

Then(/^the page should be in Iship Mode where "(.*?)" should be displayed on the header and Footer$/) do |arg1|
  page.should have_content('ishipmode')
  within(:xpath,"//div[@id='header']") do
     page.should have_content('arg1')
  end
  within(:xpath,"//div[@id='footer']") do
     page.should have_content('arg1')
  end
end

Then(/^I should not see the text "(.*?)" in the page$/) do |sign_out|
  page.should have_content('signin')
end

Then(/^Go to US Site should be displayed in the footer$/) do
  within(:xpath,"//div[@id='footer']") do
     page.should have_content('go to us')
  end
end

When(/^I click Create button$/) do
  click_button('create')
end

When(/^I enter new profile details in site$/) do
  fill_in 'profile' :with=>'detail'
end

When(/^I click on Create Profile button$/) do
  click_button('create profile')
end

When(/^I click on Signout link$/) do
  click_button('signout')
end


