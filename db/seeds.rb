# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Tenant.destroy_all

t1 = Tenant.create :first_name => 'Joseph', :last_name => 'Robinson', :phone => '0404456789', :email => 'joseph@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t2 = Tenant.create :first_name => 'Randy', :last_name => 'Jackson', :phone => '0404456789', :email => 'randy@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t3 = Tenant.create :first_name => 'Rebecca', :last_name => 'Thomas', :phone => '0404456789', :email => 'rebecca@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t4 = Tenant.create :first_name => 'Melissa', :last_name => 'Parker', :phone => '0404456789', :email => 'melissa@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t5 = Tenant.create :first_name => 'Kenneth', :last_name => 'Smith', :phone => '0404456789', :email => 'kenneth@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t6 = Tenant.create :first_name => 'Philip', :last_name =>  'Gonzalez', :phone => '0404456789', :email => 'philip@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t7 = Tenant.create :first_name => 'Anthony', :last_name => 'Anderson', :phone => '0404456789', :email => 'anthony@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t8 = Tenant.create :first_name => 'Frances', :last_name => 'White', :phone => '0404456789', :email => 'francis@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t9 = Tenant.create :first_name => 'Lillian', :last_name => 'Collins', :phone => '0404456789', :email => 'lillian@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
t10 = Tenant.create :first_name => 'Laura', :last_name => 'Stewart', :phone => '0404456789', :email => 'laura@email.com',  :password => 'chicken', :password_confirmation => 'chicken'


Agent.destroy_all

a1 = Agent.create :first_name => 'Margaret', :last_name => 'Bailey', :phone => '0404456789', :email => 'margaret@email.com', :password => 'chicken', :password_confirmation => 'chicken'
a2 = Agent.create :first_name => 'Joe', :last_name => 'Nelson', :phone => '0404456789', :email => 'joe@email.com',  :password => 'chicken', :password_confirmation => 'chicken'
a3 = Agent.create :first_name => 'Lawrence', :last_name => 'Morris', :phone => '0404456789', :email => 'lawrence@email.com', :password => 'chicken', :password_confirmation => 'chicken'
a4 = Agent.create :first_name => 'Victor', :last_name => 'Clark', :phone => '0404456789', :email => 'victor@email.com', :password => 'chicken', :password_confirmation => 'chicken'
a5 = Agent.create :first_name => 'Angela', :last_name => 'Cooper', :phone => '0404456789', :email => 'angela@email.com', :password => 'chicken', :password_confirmation => 'chicken'


Lease.destroy_all

l1 = Lease.create :address_street => '601 Bourke St', 
  :address_suburb => 'Surry Hills', 
  :address_postcode => '2010', 
  :address_state => 'NSW', 
  :start_date => '2014-02-01', 
  :end_date => '2015-02-01', 
  :currently_active => false, 
  :rated => true

l2 = Lease.create :address_street => '1 Cook St', 
  :address_suburb => 'Glebe', 
  :address_postcode => '2037', 
  :address_state => 'NSW', 
  :start_date => '2015-02-01', 
  :end_date => '2016-02-01', 
  :currently_active => false, 
  :rated => true

l3 = Lease.create :address_street => '179 Abercrombie St', 
  :address_suburb => 'Redfern', 
  :address_postcode => '2008', 
  :address_state => 'NSW', 
  :start_date => '2016-02-01', 
  :currently_active => true, 
  :rated => false

l4 = Lease.create :address_street => '17 Brumby St', 
  :address_suburb => 'Surry Hills', 
  :address_postcode => '2010', 
  :address_state => 'NSW', 
  :start_date => '2013-11-01', 
  :end_date => '2015-01-01', 
  :currently_active => false, 
  :rated => false


OutgoingRating.destroy_all

or1 = OutgoingRating.create :rent_amount => '740', 
  :rent_frequency => 'Weekly', 
  :rent_arrears => true, 
  :rent_arrears_remedied => true, 
  :nrt_received => true, 
  :nrt_reason => 'Lounge being used as bedroom to accommodate additional occupant in excess to the lease agreement', 
  :inspection_periodic => true, 
  :inspection_clean => true, 
  :inspection_pets => false, 
  :inspection_dammage => true, 
  :inspection_dammage_comment => 'Stain on bedroom carpet',
  :neighbor_complaints => true, 
  :neighbor_complaints_comment => 'Car parked blocking access to neighbors entrance', 
  :bond_refunded => false, 
  :bond_refunded_comment => 'Carpet replacement cost deducted', 
  :tenancy_terminated => true, :tenancy_terminated_by => 'Agent', 
  :tenancy_terminated_comment => 'Lease terminated due to NRT not resolved in given time-frame'

or2 = OutgoingRating.create :rent_amount => '900', 
  :rent_frequency => 'Weekly', 
  :rent_arrears => false, 
  :rent_arrears_remedied => 'null', 
  :nrt_received => false, :nrt_reason => 'null', 
  :inspection_periodic => true, 
  :inspection_clean => true, 
  :inspection_pets => false, 
  :inspection_dammage => false, 
  :inspection_dammage_comment => 'null', 
  :neighbor_complaints => false, 
  :neighbor_complaints_comment => 'null', 
  :bond_refunded => true, 
  :bond_refunded_comment => 'null', 
  :tenancy_terminated => false, 
  :tenancy_terminated_by => 'null', 
  :tenancy_terminated_comment => 'null'


or1.update_attribute :lease, l1
or2.update_attribute :lease, l2

l1.update_attribute :agent, a1
l2.update_attribute :agent, a2
l3.update_attribute :agent, a2
l4.update_attribute :agent, a2

t1.leases << l1
t2.leases << l2
t2.leases << l3
t2.leases << l4





# == Schema Information
#
# Table name: outgoing_ratings
#
#  id                          :integer          not null, primary key
#  tenant_id                   :integer
#  agent_id                    :integer
#  lease_holder                :boolean
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


# :rent_amount => '740'
# :rent_frequency => 'Weekly'
# :rent_arrears => true
# :rent_arrears_remedied => true
# :nrt_received => true
# :nrt_reason => 'Lounge being used as bedroom to accommodate additional occupant in excess to the lease agreement'
# :inspection_periodic => true
# :inspection_clean => true
# :inspection_pets => false
# :inspection_dammage => true
# :inspection_dammage_comment => 'Stain on bedroom carpet'
# :neighbor_complaints => true
# :neighbor_complaints_comment => 'Car parked blocking access to neighbors entrance'
# :bond_refunded => false
# :bond_refunded_comment => 'Carpet replacement cost deducted'
# :tenancy_terminated => true
# :tenancy_terminated_by => 'Agent'
# :tenancy_terminated_comment => 'Lease terminated due to NRT not resolved in given time-frame'


# :address_street => '1 Cook St',
# :address_suburb => 'Glebe',
# :address_postcode => '2037',
# :address_state => 'NSW',
# :start_date => '2015-02-01',
# :end_date => '2016-02-01',
# :currently_active => false