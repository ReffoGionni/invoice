json.extract! customer, :id, :cf, :name, :surname, :phone, :email, :address, :postcode, :city, :prov, :created_at, :updated_at
json.url customer_url(customer, format: :json)
