class CreateCpas < ActiveRecord::Migration
  def self.up
    create_table :cpas do |t|
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :name
      t.integer :capacity
      t.boolean :allow_client

      t.string :persistence_token
      t.integer :login_count
      t.integer :failed_login_count
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :current_login_ip
      t.string :last_login_ip

      t.timestamps
    end
    add_index :cpas, :email,  :unique => true
  end

  def self.down
    drop_table :cpas
  end
end
