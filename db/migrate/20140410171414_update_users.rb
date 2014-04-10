class UpdateUsers < ActiveRecord::Migration
  def change
    remove_column :users, :passwrod_digest, :string
    add_column :users, :password_digest, :string
  end
end
