# == Schema Information
#
# Table name: members
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  member_name    :string
#  member_phone   :string
#  member_address :string
#  mess_address   :string
#  tolet_status   :boolean
#  tolet_details  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Member < ActiveRecord::Base
  has_many :bazars
  has_many :deposits
  has_many :meals
  has_many :others
end
