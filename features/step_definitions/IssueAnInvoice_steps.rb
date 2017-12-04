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
  #pending
  invoice=invoice.last
  expect(page).to have_content(invoice.cf)
  expect(page).to have_content(invoice.invoicenumber)
  expect(page).to have_content(invoice.totduration)
  expect(page).to have_content(invoice.paydate("%d-%m-%y"))
  expect(page).to have_content(invoice.totaldue)
end

Given("I am viewing the filled invoice page") do
  visit invoices_path
end

Then("I expect to see the confirmation message") do
  expect(page).to have_content("success")
end
