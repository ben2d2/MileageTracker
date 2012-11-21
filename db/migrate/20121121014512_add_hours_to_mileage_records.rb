class AddHoursToMileageRecords < ActiveRecord::Migration
  def change
    add_column :mileage_records, :hours, :string
  end
end
