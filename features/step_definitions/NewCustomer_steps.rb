Given("I am viewing the edit page of a customer") do
  visit customers_path
  click_on 'New Customer'
  expect(page).to have_text "New Customer"
end

When("I correctly fill the needed fields") do
    fill_in 'Cf', with: 'RFFGNN00E01A111X'
    fill_in 'Name',  with: 'Gionni'
    fill_in 'Surname',  with: 'Reffo'
    fill_in 'Phone',  with: '123456789'
    fill_in 'Email', with: 'gionni.reffo@domain.it'
    fill_in 'Address', with: 'Via Sommerive 5'
    fill_in 'Postcode', with: '33333'
    fill_in 'City', with: 'Povo'
    fill_in 'Prov', with: 'TN'
end

When("I fill only the some fields") do
    fill_in 'Surname',  with: 'Reffo'
    fill_in 'Name',  with: 'Gionni'
    fill_in 'Email', with: 'gionni.reffo@domain.it'
end

When("I left blank the {string} field") do |string|
    fill_in 'Cf', with: 'RFFGNN00E01A111X' unless string != "Cf"
    fill_in 'Name',  with: 'Gionni' unless string != "Name"
    fill_in 'Surname',  with: 'Reffo' unless string != "Surname"
    fill_in 'Phone',  with: '123456789' unless string != "Phone"
    fill_in 'Email', with: 'gionni.reffo@domain.it' unless string != "Email"
    fill_in 'Address', with: 'Via Sommerive 5' unless string != "Address"
    fill_in 'Postcode', with: '33333' unless string != "Postcode"
    fill_in 'City', with: 'Povo' unless string != "City"
    fill_in 'Prov', with: 'TN' unless string != "Prov"
end
