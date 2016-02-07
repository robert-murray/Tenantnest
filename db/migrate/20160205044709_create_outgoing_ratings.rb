class CreateOutgoingRatings < ActiveRecord::Migration
  def change
    create_table :outgoing_ratings do |t|
      t.integer :lease_id
      t.integer :rent_amount
      t.string :rent_frequency
      t.boolean :rent_arrears
      t.boolean :rent_arrears_remedied
      t.boolean :nrt_received
      t.text :nrt_reason
      t.boolean :inspection_periodic
      t.boolean :inspection_clean
      t.boolean :inspection_pets
      t.boolean :inspection_dammage
      t.text :inspection_dammage_comment
      t.boolean :neighbor_complaints
      t.text :neighbor_complaints_comment
      t.boolean :bond_refunded
      t.text :bond_refunded_comment
      t.boolean :tenancy_terminated
      t.boolean :tenancy_terminated_by
      t.text :tenancy_terminated_comment

      t.timestamps null: false
    end
  end
end
