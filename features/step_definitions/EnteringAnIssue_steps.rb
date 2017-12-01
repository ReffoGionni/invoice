Given("I am viewing the new issue page") do
  FactoryBot.create(:issue)
end

When("I fill the description") do
  fill_in 'Description', with: 'I have a problem'
end

When("I click {string}") do |string|
  click_on string
end

Then("I expect the confirmation message") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I left blank the description") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I expect to get an error message") do
  pending # Write code here that turns the phrase above into concrete actions
end
