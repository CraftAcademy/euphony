Given("I visit the index page") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I click the button {string}") do |element|
  click_link_or_button element
end

Then("I should fill in {string} with {string}") do |query, song|
  fill_in query, with: song
end

Then("show me the page") do
  save_and_open_page
end

Then("I should be redirected to {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

def page_path_from(page_name)
  case page_name.downcase
  when 'registration'
    new_user_registration_path
  else
    root_path
  end
end

Given("I provide invalid credentials") do
  OmniAuth.config.mock_auth[:spotify] = :invalid_credentials
end

<<<<<<< HEAD
Then("I should be on {string} page") do |string|
=======
Then('I should be on {string} page') do |string|
>>>>>>> 3ebcb80... Corrected typos etc
  visit concert_tickets_path
end

Then("I click the {string} button") do |link|
  find('.Overachievers', match: :first).click
end
