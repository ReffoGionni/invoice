Given("I am viewing the customers page index") do
  FactoryBot.create_list(:customer, 6)
  visit customers_path
end

Given("I click Show on first entry") do
  visit "customers/1"
end

When("I fill the {string} field with {string}") do |sField, sValue|
  fill_in sField, with: sValue
end

Then("I expect to see an error message") do
  expect(page).to have_text("error")
end

Then("I expect to see a confirmation message") do
  expect(page).to have_text("success")
end
