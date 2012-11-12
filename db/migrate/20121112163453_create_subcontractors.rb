class CreateSubcontractors < ActiveRecord::Migration
  def change
    create_table :subcontractors do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone

      t.timestamps
    end
  end
end
