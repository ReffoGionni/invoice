Given("I am viewing the issue index page") do
  @customer=FactoryBot.create(:customer)
  @issue=Issue.new(:cf => @customer.cf, :description => "PROVA")
  visit "issues"
end

When("I have an issue") do
  @customer=FactoryBot.create(:customer)
  @issue=FactoryBot.create(:issue)
end
