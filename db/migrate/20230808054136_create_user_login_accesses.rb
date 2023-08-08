class CreateUserLoginAccesses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_login_accesses do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :login, null: false, foreign_key: true

      t.timestamps
    end
  end
end
