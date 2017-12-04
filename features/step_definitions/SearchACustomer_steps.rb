Given("I am viewing the list of customers") do
  visit customers_path
end

When("I fill the filter field") do
  fill_in 'filterInput', with: "Gio"  
end

Then("I see only the list of customers expected") do
  pending # Write code here that turns the phrase above into concrete actions
end
