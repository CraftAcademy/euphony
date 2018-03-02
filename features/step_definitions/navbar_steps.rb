Then("the {string} should be visible") do |selector|
  expect(page).to have_selector 'nav', id: 'navbar'
end

When("I click {string}") do |element|
  click_link_or_button element
end

Then("I should be redirected to the landing page") do
  expect(page.current_path).to eq root_path
end