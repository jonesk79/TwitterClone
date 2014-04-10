class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :passwrod_digest

      t.timestamps
    end
  end
end
