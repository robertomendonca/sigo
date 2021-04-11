class AddRolesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :superuser_role, :boolean, default: false
    add_column :users, :auditor_role, :boolean, default: false
    add_column :users, :controller_role, :boolean, default: false
  end
end
