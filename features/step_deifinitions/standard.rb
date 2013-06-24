When(/^I visit the "(.*)" page$/) do |page_name|
  visit UrlFor.new.send(page_name)
end

Then(/^I should see "(.*)"$/) do |expected_text|
  expect(page).to have_content expected_text
end