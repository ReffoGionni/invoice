Given("I am viewing the customers page index") do
  visit customers_path
end

Given("I click {string} on first entry") do |string|
  first(:link, link).click
end

When("I fill the rate field") do
  fill_in "Rate", with: "12"
end

Given("I am viewing the service page") do
  visit services_path
  click_on 'New Service'
  expect(page).to have_text "New Service"
end

When("I correctly fill the CF and rate fields") do
  fill_in "Cf", with: "RFFGNN00E01A111X"
  fill_in "Rate", with: "12"
end

Then("I expect the stopwatch will start") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am viewing the service page with the stopwatch that works") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I expect the stopwatch will stop") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am viewing the service page with blank fields") do
  visit new_service_path
end

Then("I expect to see an error message") do
  expect(page).to have_text("error")
end

Given("I am viewing the service page with all fields compiled") do
  visit new_service_path
  fill_in "Cf", with: "RFFGNN00E01A111X"
  fill_in "Rate", with: "125"
  fill_in "Duration", with: "15"
end

Then("I expect to see a confirmation message") do
  expect(page).to have_text("success")
end
