class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :subcontractor_id
      t.integer :client_id
      t.datetime :start_at
      t.datetime :end_at
      t.string :color
      
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
