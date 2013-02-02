class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.float :amount_due
      t.date :date_paid
      t.float :amount_paid
      t.integer :paid_mode
      t.integer :status
      t.string :token
      t.string :note
      t.timestamps
    end
    add_index :bills, :status
  end

  def self.down
    drop_table :bills
  end
end
