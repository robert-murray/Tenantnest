# == Schema Information
#
# Table name: leases
#
#  id               :integer          not null, primary key
#  agent_id         :integer
#  tenant_id        :integer
#  address_street   :string
#  address_suburb   :string
#  address_postcode :integer
#  address_state    :string
#  start_date       :date
#  end_date         :date
#  currently_active :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Lease < ActiveRecord::Base
  has_and_belongs_to_many :tenants
  belongs_to :agent
  has_one :outgoing_rating
end
