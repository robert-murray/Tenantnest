## TenantNest

---

# Core Functionality : Tenant rating and history
- agent rate tenant
- history of ratings
- easy form for agents

---

# Extension 1 : Tenant dashboard
- calendar of due items / schedule (rent due, inspections, maintenance)
- contract information
- preferred contacts (utility, handyman, locksmith)
- lease start / end / renewal dates
- lodge requests
- lodge complaints
- complaint escalation

---

# Extension 2 : Agent statistics
- get agencies to incorporate system across organization
- agency incentive: management ability to see agent performance / response to complaints / requests
- end of lease => rate agent / agency (maybe)

---

# Why / proposition
- difficulty asking for references
- take subjectivity out of rating
- a consolidated area for tenant materials

---

# Possible dependencies / plug-ins / db
- Backbone 
- Marionette
- backbone check-box plug-in
- -d postgresql
- Siimple CSS framework

---

# MODELS - Basic Setup

Tenant
  has_many :leases
  has_many :outgoing_ratings, through: :leases

Agent
  has_many :leases
  has_many :tenants, through: :leases

lease 
  has_and_belongs_to_many :tenants
  belongs_to :agent
  has_one: outgoing_rating

outgoing_rating
  belongs_to :lease
  has_and_belongs_to_many :tenants

---

#Tables

tenants
  tenant_id
  first_name
  last_name
  email
  password
  phone

agents
  agent_id
  first_name
  last_name
  email
  password
  phone

lease
  lease_id
  agent_id
  tenant_id
  address
  start_date
  end_date
  currently_active

outgoing_ratings
  outgoing_rating_id
  tenant_id
  agent_id
  date
  check_1
  check_2
  check_3
  comment


---

## MODELS - Extended setup

utility contacts
scheduled / due items

---

rails generate scaffold Tenant

tenants

  first_name:string
  last_name:string
  email:string
  password_digest:string
  phone:string

agents

  first_name:string
  last_name:string
  email:string
  password_digest:string
  phone:string

leases

  agent_id:integer
  tenant_id:integer
  address_street:string
  address_suburb:string
  address_postcode:integer
  address_state:string
  start_date:date
  end_date:date
  currently_active:boolean

outgoing_ratings

  tenant_id:integer
  agent_id:integer

  lease_holder:boolean

  rent_amount:integer
  rent_frequency:string
  rent_arrears:boolean
  rent_arrears_remedied:boolean
  
  nrt_received:boolean
  nrt_reason:text
  
  inspection_periodic:boolean
  inspection_clean:boolean
  inspection_pets:boolean
  inspection_dammage:boolean
  inspection_dammage_comment:text

  neighbor_complaints:boolean
  neighbor_complaints_comment:text

  bond_refunded:boolean
  bond_refunded_comment:text

  tenancy_terminated:boolean
  tenancy_terminated_by:boolean
  tenancy_terminated_comment:text


---

rails generate scaffold Tenant first_name:string last_name:string email:string phone:string password_digest:string
  
rails generate scaffold Agent first_name:string last_name:string email:string phone:string password_digest:string

rails generate scaffold Lease agent_id:integer tenant_id:integer address_street:string address_suburb:string address_postcode:integer address_state:string start_date:date end_date:date currently_active:boolean

rails generate scaffold Outgoing_rating tenant_id:integer agent_id:integer lease_holder:boolean rent_amount:integer rent_frequency:string rent_arrears:boolean rent_arrears_remedied:boolean nrt_received:boolean nrt_reason:text inspection_periodic:boolean inspection_clean:boolean inspection_pets:boolean inspection_dammage:boolean inspection_dammage_comment:text neighbor_complaints:boolean neighbor_complaints_comment:text bond_refunded:boolean bond_refunded_comment:text tenancy_terminated:boolean tenancy_terminated_by:boolean tenancy_terminated_comment:text
