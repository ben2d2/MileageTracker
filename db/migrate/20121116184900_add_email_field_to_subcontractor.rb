class AddEmailFieldToSubcontractor < ActiveRecord::Migration
  def change
    add_column :subcontractors, :email, :string
  end
end
