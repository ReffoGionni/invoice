class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.decimal :idClient
      t.decimal :invoiceNumber
      t.decimal :totDuration
      t.string :payDate
      t.decimal :totalDue

      t.timestamps
    end
  end
end
