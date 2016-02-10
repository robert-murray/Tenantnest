class AddRatedToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :rated, :boolean
  end
end
