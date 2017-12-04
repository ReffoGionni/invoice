class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :cf
      t.decimal :invoiceNumber
      t.decimal :totDuration
      t.date :payDate
      t.decimal :totalDue

      t.timestamps
    end
  end
end
