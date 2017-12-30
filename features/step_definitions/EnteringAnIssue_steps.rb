Given("I am viewing the new issue page") do
  visit new_issue_path
end

When("I have a customer") do
  @customer=FactoryBot.create(:customer)
end

When("I correctly fill the Cf and Description") do
  fill_in 'issue_cf', with: @customer.cf
  fill_in 'issue_description', with: "I have a problem"
end

When("I left blank the  Cf and Description") do
    fill_in 'issue_cf', with: ''
    fill_in 'issue_description', with: ''
end
