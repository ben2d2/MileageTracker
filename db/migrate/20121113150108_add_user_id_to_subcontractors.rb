class AddUserIdToSubcontractors < ActiveRecord::Migration
  def change
    add_column :subcontractors, :user_id, :integer
  end
end
