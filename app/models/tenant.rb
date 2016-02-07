# == Schema Information
#
# Table name: tenants
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  phone           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Tenant < ActiveRecord::Base
  attr_accessor :password, :password_confirmation
  has_secure_password
  has_many :leases
  has_many :outgoing_ratings, through: :leases
  validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true, :length => { :minimum => 2 }
  validates :last_name, :presence => true, :length => { :minimum => 2 }
end
