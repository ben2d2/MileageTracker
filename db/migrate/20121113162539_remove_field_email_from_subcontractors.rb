class RemoveFieldEmailFromSubcontractors < ActiveRecord::Migration
  def up
    remove_column :subcontractors, :email
  end

  def down
    add_column :subcontractors, :email, :string
  end
end
