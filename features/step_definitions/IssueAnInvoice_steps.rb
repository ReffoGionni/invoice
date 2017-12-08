Given("I am viewing the initial invoice page") do
  visit new_invoice_path
end

When("I correctly fill the fields") do
   fill_in 'Cf', with: 1
   fill_in 'Invoicenumber', with: 1234
   fill_in 'Totduration', with: 2
   #fill_in 'Paydate', with: ('a'..'z').to_a.shuffle.join
   fill_in 'Totaldue', with: 4

end

Then("I see the invoice") do
  visit invoices_path(@invoice)
end

Given("I am viewing the invoices page") do
  visit invoices_path
  expect(page).to have_content("Invoices")
end

When("I choose the invoice to be paid") do
  #find("input[type='checkbox'][value='#{Invoice.first.id}']").set(true)
end

Then("I expect to see the confirmation message") do
  expect(page).to have_content("success")
end

When("I have invoice") do
  @invoice=FactoryBot.create(:invoice)
end
