# == Schema Information
#
# Table name: agents
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

class Agent < ActiveRecord::Base
  has_secure_password
  has_many :leases
  has_many :tenants, through: :leases
  validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true, :length => { :minimum => 2 }
  validates :last_name, :presence => true, :length => { :minimum => 2 }
end
