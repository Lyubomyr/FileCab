class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.integer :client_id
      t.integer :cpa_id
      t.integer :bill_id
      t.string :name
      t.float :size
      t.integer :by
      t.integer :year
      t.string :description

      t.timestamps
    end
    add_index :documents, :year
    add_index :documents, :client_id
    add_index :documents, :cpa_id
  end

  def self.down
    drop_table :documents
  end
end
