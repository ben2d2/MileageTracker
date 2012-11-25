class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :client_id
      t.integer :subcontractor_id
      t.float :miles_rate
      t.float :labor_rate

      t.timestamps
    end
  end
end
