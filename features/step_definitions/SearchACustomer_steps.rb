Given("I am viewing the list of customers") do
  visit customers_path
end

When("I fill the filter field with {string}") do |string|
  fill_in 'filterInput', with: string  
end

Then("I see only the list of customers containing {string}") do |string|
  expect(page).to have_text string
end
