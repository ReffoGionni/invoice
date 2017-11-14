class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :cf
      t.string :name
      t.string :surname
      t.string :phone
      t.string :email
      t.string :address
      t.decimal :postcode
      t.string :city
      t.string :prov

      t.timestamps
    end
  end
end
