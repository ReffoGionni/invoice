json.extract! invoice, :id, :idClient, :invoiceNumber, :totDuration, :payDate, :totalDue, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
