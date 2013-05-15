Given(/^I am on the home page$/) do
  visit("/home")
end

When(/^I click on "(.*?)"$/) do |beauty|
  click_button('beauty')
end

Then(/^I should see "(.*?)" in Left Pane below the header "(.*?)"$/) do |makeup, header|
   within(:xpath,"//div[@id='left_pane']") do
     within(:xpath,"//div[@id='#{header}']") do
      page.should have_content('#{makeup}')
    end
  end
end

When(/^I click on the First product from the browse page$/) do
  click_link("tabelViewCell index:0")
end

Then(/^Product PDP Page should be displayed$/) do
   page.should have_content('pdp page')
end

When(/^I click on change Country from the footer$/) do
  click_link('change_country')
end

When(/^I select country "(.*?)" and Currency "(.*?)"$/) do |country, currency|
   click_link('#{country}')
   click_link('#{currency}')
end

When(/^I click on "(.*?)" Button$/) do |save_and_continue|
   click_button('#{save_and_continue}')
end

Then(/^Iship Welcome Mat should be displayed$/) do
  page.should have_content('welcome mat')
end

Then(/^the page should be in Iship Mode where "(.*?)" should be displayed on the header and Footer$/) do |ship_mode|
  page.should have_content('#{ship_mode}')
  within(:xpath,"//div[@id='header']") do
     page.should have_content('arg1')
  end
  within(:xpath,"//div[@id='footer']") do
     page.should have_content('arg1')
  end
end

Then(/^Error message "(.*?)" should be displayed in the PDP Page$/) do |error_message|
 within(:xpath,"//div[@id='pdp_page']") do
     page.should have_content('#{error_message}')
  end
end

Then(/^for the product "(.*?)" button should not be displayed$/) do |product|
  page.should_not have_content('#{product}')
end