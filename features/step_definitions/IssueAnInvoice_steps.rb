Given("I am viewing the index invoice page") do
  #visit new_invoice_path
  visit invoices_path
end

When("I correctly fill the fields") do
   fill_in 'Cf', with: @customer.cf
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
  visit "invoices/1/edit?payDate"
end

When("I have invoice") do
  @invoice=FactoryBot.create(:invoice)
end
