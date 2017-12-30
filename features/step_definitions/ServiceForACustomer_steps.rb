Given("I am viewing the customers page index") do
  FactoryBot.create_list(:customer, 6)
  visit customers_path
end

Given("I click Show on first entry") do
  visit "customers/1"
end

When("I have a service") do
  @service=FactoryBot.create(:service)
end

Given("I am viewing the service index page") do
  visit services_path
end