class AddRoleToUserLogins < ActiveRecord::Migration[7.0]
  def change
    add_column :user_logins, :role, :string
  end
end
