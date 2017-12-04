class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :cf
      t.text :description

      t.timestamps
    end
  end
end
