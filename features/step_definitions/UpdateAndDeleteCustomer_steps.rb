Given("I am viewing the update page of first customer") do
  FactoryBot.create_list(:customer, 6)
  visit "customers/1/edit"
end

Given("I am viewing the index page of customers") do
  FactoryBot.create_list(:customer, 1)
  visit "customers"
end
