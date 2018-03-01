Given("I visit the index page") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I click the button {string}") do |button|
  click_link_or_button button
end
