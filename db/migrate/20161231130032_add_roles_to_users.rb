class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :superadmin_role, :boolean
    add_column :users, :contributor_role, :boolean
    add_column :users, :expert_role, :boolean
  end
end
