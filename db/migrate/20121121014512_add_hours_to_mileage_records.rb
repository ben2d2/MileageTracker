class AddHoursToJobLogs < ActiveRecord::Migration
  def change
    add_column :job_logs, :hours, :string
  end
end
