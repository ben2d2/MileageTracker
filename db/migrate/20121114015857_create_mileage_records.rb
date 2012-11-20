class CreateMileageRecords < ActiveRecord::Migration
  def change
    create_table :mileage_records do |t|
      t.integer :subcontractor_id
      t.integer :client_id
      t.string :date
      t.string :miles

      t.timestamps
    end
  end
end
