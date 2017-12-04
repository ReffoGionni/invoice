Given("I am viewing the new issue page") do
  visit new_issue_path
end

When("I correctly fill the Cf and Description") do
  fill_in 'issue_cf', with: "GVNNNA97T67D530S"
  fill_in 'Description', with: "I have a problem"

end

When("I click {string}") do |string|
  click_on string
end

Then("I expect the confirmation message") do
   expect(page).to have_content("success")
end

When("I left blank the  Cf and Description") do
    fill_in 'Cf', with: "GVNNNA97T67D530S"
    fill_in 'Description', with: ""

end

Then("I expect to get an error message") do
   expect(page).to have_content("error")
end
