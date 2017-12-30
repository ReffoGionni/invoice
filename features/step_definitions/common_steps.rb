When("I click {string}") do |string|
  click_on string
end

When("I fill the {string} field with {string}") do |sField, sValue|
  fill_in sField, with: sValue
end

Then("I expect the {string} message") do |string|
  expect(page).to have_content string
end
