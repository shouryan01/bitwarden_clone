class CreateLogins < ActiveRecord::Migration[7.0]
  def change
    create_table :logins do |t|
      t.string :name
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
