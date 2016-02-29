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

  validates :user_id, :member_name, :member_phone, :presence => true
  validates :member_name, length: {
      minimum: 3,
      maximum: 30,
      too_short: "have to be minumum %{count} characters",
      too_long: "have to be maximum %{count} characters"
  }
  validates :member_phone, length: {is: 11, wrong_length: "must have %{count} characters ex: 01xx xxx xxx"}
end
