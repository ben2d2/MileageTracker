class RenameTable < ActiveRecord::Migration
  def self.up
  	rename_table :mileage_records, :job_logs
  end

  def self.down
  	rename_table :job_logs, :mileage_records
  end
end
