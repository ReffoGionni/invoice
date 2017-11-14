class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.text :desctiption
      t.boolean :is_service_required

      t.timestamps
    end
  end
end
