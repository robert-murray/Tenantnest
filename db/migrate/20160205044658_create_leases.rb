class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :agent_id
      t.integer :tenant_id
      t.string :address_street
      t.string :address_suburb
      t.integer :address_postcode
      t.string :address_state
      t.date :start_date
      t.date :end_date
      t.boolean :currently_active

      t.timestamps null: false
    end
  end
end
