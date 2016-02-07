# == Schema Information
#
# Table name: outgoing_ratings
#
#  id                          :integer          not null, primary key
#  lease_id                    :integer
#  rent_amount                 :integer
#  rent_frequency              :string
#  rent_arrears                :boolean
#  rent_arrears_remedied       :boolean
#  nrt_received                :boolean
#  nrt_reason                  :text
#  inspection_periodic         :boolean
#  inspection_clean            :boolean
#  inspection_pets             :boolean
#  inspection_dammage          :boolean
#  inspection_dammage_comment  :text
#  neighbor_complaints         :boolean
#  neighbor_complaints_comment :text
#  bond_refunded               :boolean
#  bond_refunded_comment       :text
#  tenancy_terminated          :boolean
#  tenancy_terminated_by       :boolean
#  tenancy_terminated_comment  :text
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#

class OutgoingRating < ActiveRecord::Base
  belongs_to :lease
  has_and_belongs_to_many :tenants
end
