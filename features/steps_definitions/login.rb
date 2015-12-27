Given(/^login page$/) do
  visit "http://localhost:63342/login_prueba/login_view.html"
end

When(/^I enter a valid username$/) do
  find_field("username").set("test")
end

When(/^enter a valid password$/) do
  find_field("password").set("test")
end

When(/^press submit button$/) do
  click_button('submit')
end

Then(/^login is successful$/) do
  expect(page).to have_content('login successful')
end

When(/^enter a invalid password$/) do
  find_field("password").set("inv")
end

Then(/^login fails$/) do
  expect(page).to have_content('incorrect username or password')
end

When(/^I enter a wrong username$/) do
  find_field("username").set("user")
end
