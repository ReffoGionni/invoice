class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.decimal :duration
      t.string :cf
      t.decimal :rate

      t.timestamps
    end
  end
end
