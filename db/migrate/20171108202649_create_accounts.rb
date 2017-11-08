class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :login_name
      t.string :password
      t.string :username
      t.string :email
      t.boolean :is_admin
      t.timestamps
    end
  end
end
