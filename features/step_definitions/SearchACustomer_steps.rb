Then("I see only the list of customers containing {string}") do |string|
  Customer.where("Surname like '%'+string+'%'")
end
