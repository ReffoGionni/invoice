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

<<<<<<< HEAD
Then("I expect the confirmation message") do
   expect(page).to have_content("success")
end

When("I left blank the  Cf and Description") do
    fill_in 'Cf', with: "GVNNNA97T67D530S"
    fill_in 'Description', with: ""

end

Then("I expect to get an error message") do
   expect(page).to have_content("error")
=======
When("I left blank the description") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I expect the confirmation message") do
  expect(page).to have_text "successfully"
end

Then("I expect to get an error message") do
  expect(page).to have_text "error"
>>>>>>> 0115828ede0d9c4c29ecd06948e078c133b6b7b7
end
